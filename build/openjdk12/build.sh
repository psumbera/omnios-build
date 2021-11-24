set -xe

# Oracle Developer Studio 12.4 and JDK 8 are needed.
STUDIO="/opt/solarisstudio12.4/bin"
JDK="/usr/jdk/instances/jdk1.8.0/bin/"

# OpenJDK 12 has some issues:
# - https://bugs.openjdk.java.net/browse/JDK-8211081
# - shenandoahgc doesn't build on Solaris i386 (and is not supported on sparc)
CONFIG_OPTS_JDK12="--with-jvm-features=-shenandoahgc --disable-warnings-as-errors"

# EM_486 is no longer defined since Solaris 11.4
function fixsrc1 {
  FILE=os_solaris.cpp
  for f in hotspot/src/os/solaris/vm/$FILE src/hotspot/os/solaris/$FILE; do
    [ ! -f "$f" ] || gsed -i 's/EM_486/EM_IAMCU/' "$f"
  done
}

# caddr32_t is already defined in Solaris 11
function fixsrc2 {
  FILE=src/java.base/solaris/native/libnio/ch/DevPollArrayWrapper.c
  for f in "$FILE" "jdk/$FILE"; do
    [ ! -f "$f" ] || gsed -i '/typedef.*caddr32_t;/d' "$f"
  done
}

# S11.4.21 have updated CUPS version which causes problem to old Studio compiler
function fixsrc3 {
  test `uname -v | cut -d . -f 3` -lt 21 && return
  gsed 's;_CUPS_NONNULL(...);_CUPS_NONNULL();' /usr/include/cups/versioning.h > my-cups-versioning.h
  FILE=CUPSfuncs.c
  for f in jdk/src/java.desktop/unix/native/common/awt/$FILE src/java.desktop/unix/native/common/awt/$FILE; do
    [ ! -f "$f" ] || gsed -i "/#include <dlfcn.h>/a#include \"`pwd`/my-cups-versioning.h\"" "$f"
  done
}

# S11.4.24 renamed TRAPNO to REG32_TRAPNO
function fixsrc4 {
  test `uname -v | cut -d . -f 3` -lt 24 && return
  FILE=os_solaris_x86.cpp
  for f in hotspot/src/os_cpu/solaris_x86/vm/$FILE src/hotspot/os_cpu/solaris_x86/$FILE; do
    [ ! -f "$f" ] || gsed -i 's;TRAPNO;REG32_TRAPNO;' "$f"
  done
}

for VERSION in {9..12}; do
  hg clone http://hg.openjdk.java.net/jdk-updates/jdk${VERSION}u openjdk${VERSION}
  cd openjdk${VERSION}/
  # OpenJDK 9 uses script to download nested repositories
  test -f get_source.sh && bash get_source.sh
  # There are needed some source changes to build OpenJDK on Solaris 11.4.
  fixsrc1 ; fixsrc2 ; fixsrc3 ; fixsrc4
  [[ ${VERSION} -lt 12 ]] || CONFIGURE_OPTIONS="${CONFIG_OPTS_JDK12}"
  # Oracle Solaris Studio 12.4 may fail while building hotspot-gtest (_stdio_file.h issue)
  PATH="$JDK:$STUDIO:/usr/bin/" bash ./configure --disable-hotspot-gtest ${CONFIGURE_OPTIONS}
  gmake bundles 2>&1 | tee build.log
  RELEASE_DIR=`grep "^Finished building target" build.log | cut -d \' -f 4`
  JDK="`pwd`/build/${RELEASE_DIR}/images/jdk/bin/"
  cd ..
done

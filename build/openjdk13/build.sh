#!/usr/bin/bash
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
# }}}
#
# Copyright 2021 OmniOS Community Edition (OmniOSce) Association.

. ../../lib/build.sh

PROG=openjdk
VER=13
UPDATE=5
BUILD=0
PKG=runtime/java/openjdk13
SUMMARY="openjdk $VER"
DESC="Open-source implementation of the seventeenth edition of the "
DESC+="Java SE Platform"

# download jdk repo and create tar archive for later use
JDK_SRCDIR="jdk${VER}u-jdk-$VER.0.$UPDATE-$BUILD"
JDK_ARCHIVE="jdk-$VER.0.$UPDATE+$BUILD.tar.bz2"
if [ ! -f openjdk/$JDK_ARCHIVE ] ; then
   logmsg "-- Downloading OpenJDK $VER int local archive $JDK_ARCHIVE"
   if [ x$OPENJDK_REPO = "x" ] ; then
       OPENJDK_REPO="https://hg.openjdk.java.net/jdk-updates"
   fi
   mkdir -p openjdk
   hg clone $OPENJDK_REPO/jdk13u openjdk/$JDK_SRCDIR
   (cd openjdk/$JDK_SRCDIR && hg update jdk-13.0.5.1-ga)
   rm -rf openjdk/$JDK_SRCDIR/.hg
   (cd openjdk && TZ=UTC gtar cf jdk-$VER.0.$UPDATE+$BUILD.tar --mtime='1970-01-01' --owner=root --group=root --sort=name $JDK_SRCDIR)
   pbzip2 openjdk/jdk-$VER.0.$UPDATE+$BUILD.tar
   echo '6b0229ddbe74c551ccf851c01af9d5d3d1f6fdf24f61053f80db6afb23a67dbd' > openjdk/$JDK_ARCHIVE.sha256
   mkdir -p liberation-fonts
   (cd liberation-fonts; wget $MIRROR/liberation-fonts/liberation-fonts-ttf-2.1.5.tar.gz)
   (cd liberation-fonts; openjdk; wget $MIRROR/liberation-fonts/liberation-fonts-ttf-2.1.5.tar.gz.sha256)
fi

MIRROR=`pwd`

# check ooce/fonts/liberation for current version
LIBERATIONFONTSVER=2.1.5
SKIP_LICENCES="SILv1.1"

set_arch 64

set_builddir "jdk${VER}u-jdk-$VER.0.$UPDATE-$BUILD"

BMI_EXPECTED=1
SKIP_RTIME_CHECK=1

BUILD_DEPENDS_IPS="
"

RUN_DEPENDS_IPS="runtime/java/jexec"

VERHUMAN=jdk${VER}u${UPDATE}-b$BUILD
IVER=${VER}.0

IROOT=usr/jdk/instances
IFULL=`pwd`/../openjdk12/openjdk12/build/solaris-x86_64-server-release/jdk

OOCEPREFIX=/opt/ooce

XFORM_ARGS="
    -DVER=$VER
    -DIVER=$IVER
    -DIROOT=$IROOT
    -DIFULL=$IFULL
    -DLFVER=$LIBERATIONFONTSVER
"

# The JDK build framework does not use the -j option to make.
NO_PARALLEL_MAKE=1

CONFIGURE_OPTS="
    --enable-unlimited-crypto
    --with-boot-jdk=/$IFULL
    --with-native-debug-symbols=none
    --with-toolchain-type=gcc
    --disable-hotspot-gtest --disable-dtrace
    --disable-warnings-as-errors
"

CONFIGURE_OPTS_WS="
    --with-extra-cflags=\"$CFLAGS $CFLAGS64\"
    --with-extra-cxxflags=\"$CXXFLAGS $CXXFLAGS64\"
    AS=/usr/gnu/bin/as
"

MAKE_ARGS="all"

make_install() {
    logmsg "Installing openjdk to $DESTDIR"

    logcmd mkdir -p $DESTDIR/$IFULL || logerr "--- mkdir failed"
    logcmd rsync -a $TMPDIR/$BUILDDIR/images/jdk/ $DESTDIR/$IFULL/ \
        || logerr "--- rsync failed"

    # Install liberation fonts to cover the 'core fonts' set
    # See also patches/fontpath.patch
    DDIR=$DESTDIR/$IFULL/lib/fonts
    logcmd mkdir -p $DDIR || logerr "mkdir fonts"
    logcmd cp $TMPDIR/$LFDIR/Liberation*.ttf $DDIR \
        || logerr "failed to copy fonts"
}

init
download_source $PROG "jdk-$VER.0.$UPDATE+$BUILD"
patch_source

# Also download the liberation fonts archive. Fonts from here will be
# provided to satisfy the core fonts.
LFDIR=liberation-fonts-ttf-$LIBERATIONFONTSVER
BUILDDIR=$LFDIR download_source liberation-fonts $LFDIR

prep_build autoconf -oot
chmod +x $CONFIGURE_CMD
build -noctf
VER=$IVER.$UPDATE.$BUILD
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker

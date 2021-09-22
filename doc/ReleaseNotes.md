<a href="https://omniosce.org">
<img src="https://omniosce.org/OmniOSce_logo.svg" height="128">
</a>

# Release Notes for OmniOS v11 r151036

## r151036au (2021-09-23)
Weekly release for w/c 20th of September 2021.
> This is a non-reboot update

# Changes

* `curl` has been updated to version 7.79.1.

<br>

---

## r151036at (2021-09-15)
Weekly release for w/c 13th of September 2021.
> This is a non-reboot update

# Security Fixes

* `curl` has been updated to version 7.79.0 fixing 3 security vulnerabilities:
  * [CVE-2021-22945](https://curl.se/docs/CVE-2021-22945.html)
  * [CVE-2021-22946](https://curl.se/docs/CVE-2021-22946.html)
  * [CVE-2021-22947](https://curl.se/docs/CVE-2021-22947.html)

<br>

---

## r151036as (2021-09-07)
Weekly release for w/c 06th of September 2021.
> This is a non-reboot update

### Security Fixes

* Python updated to 3.7.12

### Bug Fixes

* p7zip would truncate passphrases read from the terminal.

<br>

---

## r151036aq (2021-08-24)
Weekly release for w/c 23rd of August 2021.
> This is a non-reboot update

### Security Fixes

* `openssl 1.1` updated to 1.1.1l, fixing
  [CVE-2021-3711](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3711),
  [CVE-2021-3712](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3712)

* `openssl 1.0` patched to fix
  [CVE-2021-3712](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3712)

<br>

---

## r151036ao (2021-08-10)
Weekly release for w/c 9th of August 2021.
> This is a non-reboot update

### Security Fixes

* `perl` core module `Encode` has been patched fixing
  [CVE-2021-36770](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-36770).

<br>

---

## r151036al (2021-07-23)
Weekly release for w/c 19th of July 2021.
> This is a non-reboot update

### Security Fixes

* `curl` has been updated to version 7.78.0 fixing 5 security vulnerabilities:
  * [CVE-2021-22922](https://curl.se/docs/CVE-2021-22922.html)
  * [CVE-2021-22923](https://curl.se/docs/CVE-2021-22923.html)
  * [CVE-2021-22924](https://curl.se/docs/CVE-2021-22924.html)
  * [CVE-2021-22925](https://curl.se/docs/CVE-2021-22925.html)
  * [CVE-2021-22926](https://curl.se/docs/CVE-2021-22926.html)

* `openjdk` has been upgraded to 11.0.12+7 and 1.8.302-08, fixing:
  * [CVE-2021-2341](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-2341)
  * [CVE-2021-2369](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-2369)
  * [CVE-2021-2388](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-2388)

<br>

---

## r151036ag (2021-06-14)
Weekly release for w/c 14th of June 2021.
> This is a non-reboot update

### Security Fixes

* ISC DHCP updated to 4.4.2-P1, fixing
  [CVE-2021-25217](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-25217).

<br>

---

## r151036ad (2021-05-26)
Weekly release for w/c 24th of May 2021.
> This is a non-reboot update

### Security Fixes

* curl updated to 7.77.0, fixing
  [CVE-2021-22901](https://curl.se/docs/CVE-2021-22901.html),
  [CVE-2021-22898](https://curl.se/docs/CVE-2021-22898.html),
  [CVE-2021-22897](https://curl.se/docs/CVE-2021-22897.html)

<br>

---

## r151036ac (2021-05-18)
Weekly release for w/c 17th of May 2021.
> This is a non-reboot update

### Security Fixes

* libxml2 updated to 2.9.12, fixing
  [CVE-2021-3541](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3541).

<br>

---

## r151036y (2021-04-22)
Weekly release for w/c 19th of April 2021.
> This is a non-reboot update

### Security Fixes

* `openjdk` updated, fixing
  [CVE-2021-2161](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-2161),
  [CVE-2021-2163](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-2163)

<br>

---

## r151036x (2021-04-14)
Weekly release for w/c 12th of April 2021.
> This update requires a reboot

### Changes

* `curl` updated to 7.76.1

* Changing the encryption key on a ZFS dataset with clones did not update
  the clones themselves, rendering them inaccessible.

* SMB shares from an _lofs_ mount would fail.

* Reaping many process with shared mappings of files on ZFS was extremely slow.

* In rare cases, a kernel panic could occur during system boot due to a race
  condition in the mlxcx driver.

* The pkg depot server would periodically hang when accessed over low-latency
  connections.

* The `dma` mailer could spin when trying to create a new local mailbox.

<br>

---

## r151036v (2021-04-01)
Weekly release for w/c 29th of March 2021.
> This is a non-reboot update

### Security Fixes

* `curl` updated to 7.76.0, fixing
  [CVE-2021-22876](https://curl.se/docs/CVE-2021-22876.html),
  [CVE-2021-22890](https://curl.se/docs/CVE-2021-22890.html)

<br>

---

## r151036u (2021-03-25)
Weekly release for w/c 22th of March 2021.
> This is a non-reboot update

### Security Fixes

* `openssl` updated to 1.1.1k, fixing
  [CVE-2021-3449](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3449),
  [CVE-2021-3450](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3450)

* `openssh` updated to fix
  [CVE-2021-28041](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-28041)

<br>

---

## r151036s (2021-03-10)
Weekly release for w/c 8th of March 2021.
> This is a non-reboot update

### Security Fixes

* `git` has been updated to version 2.28.1, fixing
  [CVE-2021-21300](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-21300).

<br>

---

## r151036p (2021-02-18)
Weekly release for w/c 15th of February 2021.
> This update requires a reboot

### Security Fixes

* `openssl` updated to 1.1.1j, fixing
  [CVE-2021-23840](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-23840),
  [CVE-2021-23841](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-23841).

* The legacy `openssl` 1.0.2 has also been patched to mitigate the above CVEs.

* All shipped `python` versions have been updated to address
  [CVE-2021-3177](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3177).

### Other Changes

* Adding a second disk to an Azure instance caused a kernel panic.

* The ZFS I/O pipeline is now able to use the pageout reserve memory pool
  in order to flush pages to disk under low memory conditions.

<br>

---

## r151036o (2021-02-11)
Weekly release for w/c 8th of February 2021.
> This is a non-reboot update

### Security Fixes

* `screen` updated to fix
  [CVE-2021-3156](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3156).

<br>

---

## r151036m (2021-01-25)
Weekly release for w/c 25th of January 2021.
> This update requires a reboot

### Security Fixes

* It was possible for an unprivileged user, including one in a zone, to cause
  the system to panic.

* `sudo` updated to 1.9.5p2, fixing
  [CVE-2021-3156](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3156).

* `socat` updated to fix a potential heap based buffer overflow.

### Other Changes

* Support for Active-Directory servers which enforce secure RPC
  (due to CVE-2020-1472).

* OpenJDK 11 now bundles several core fonts and has been updated to 11.0.10+9

* OpenJDK 8 has been updated to 1.8.282-b08

* `gcc` has been updated so that the `-z assert-deflib` linker option works
  correctly for 64-bit objects.

* ZFS `list -t bookmark` was not working for zvols.

* Add support for the `IA32_FEATURE_CONTROL` MSR in bhyve. This improves
  support for some guest operating systems.

* `pkg apply-hot-fix` could produce error messages during operation.

<br>

---

## r151036f (2020-12-10)
Weekly release for w/c 7th of December 2020.
> This update requires a reboot

### Security Fixes

* `openssl` updated to 1.1.1i, fixing
  [CVE-2020-1971](https://www.openssl.org/news/secadv/20201208.txt)

* `openssl 1.0` updated to fix
  [CVE-2020-1968](https://www.openssl.org/news/secadv/20200909.txt),
  [CVE-2020-1971](https://www.openssl.org/news/secadv/20201208.txt)

* `curl` updated to 7.74.0, fixing
  [CVE-2020-8284](https://curl.se/docs/CVE-2020-8284.html),
  [CVE-2020-8285](https://curl.se/docs/CVE-2020-8285.html),
  [CVE-2020-8286](https://curl.se/docs/CVE-2020-8286.html)

### Bug Fixes

* MacOS Big Sur clients would experience read hangs when accessing OmniOS
  SMB shares.

* In rare cases, a system could crash shortly after boot while maintaining
  ZFS user quota information (particularly if a zfs recv was running at
  the same time).

* The `pkg apply-hot-fix` command, in conjunction with the creation of a new
  boot environment, would sometimes leave extra origins configured in
  non-global zones. This caused problems for subsequent package updates.

* The `pciutils` package tools were unable to enumerate PCI devices.

* Compiling with `gcc -pg` did not produce a working profiling binary.

* A file's modification time would change twice when the file was modified
  from an SMB client. This caused problems for some Windows utilities.

* Restore the NDMP ZFS backup and restore method which was inadvertently
  broken in the r151036 release.

### Other Changes

* The Intel CPU microcode update for some Core (Gen. 11) Mobile processors
  has been removed as it was reported to cause problems on some platforms.

* The template `.env` file for building illumos-gate on OmniOS has been
  updated to use OpenJDK 11 by default
  (following integration of [13315](https://www.illumos.org/issues/13315))

<br>

---

## r151036c (2020-11-17)
Weekly release for w/c 16th of November 2020.
> This update requires a reboot

### Security Fixes

* Updated Intel processor microcode from Intel, fixing several security
  vulnerabilities.

### Other Changes

* `rsyslog` was ignoring the local system timezone and always logging in UTC.

* `pkg` could backtrace when displaying licence information.

* Rebuilt IPS repositories were not compatible with Oracle Solaris clients.

<br>

---

Stable Release, 2nd of November 2020

`uname -a` shows `omnios-r151036-4a32ffb911`

r151036 release repository: https://pkg.omnios.org/r151036/core

## Upgrade Notes

Before upgrading, please ensure that your `package/pkg` package is up-to-date
by running `pkg update pkg`. The `pkg` software was recently updated for all
supported releases (r151030, r151032 and r151034) to properly handle
conditional dependencies which are more widely used in r151036. The new `pkg`
also has additional diagnostic output to help troubleshoot package updates.

## New features since r151034

### System Features

* The `rsyslog` alternative system log package is available and is the default
  system logger for new interactive installations. To switch an upgraded system
  to rsyslog:
  ```
  pkg install system/rsyslog
  # Review the /etc/rsyslog.conf file
  svcadm disable system-log:default
  svcadm enable system-log:rsyslog
  ```

* It is now possible to configure the `roleauth` attribute on roles to control
  whether a user assuming a role needs to authenticate with the role password
  or their own. See [user_attr(4)](https://man.omnios.org/man4/user_attr.4.html)

* Multiple improvements in the PCI autoconfiguration process to better support
  64-bit PCI devices.

* The default platform-specific module (PSM) has changed to `apix`. Many
  systems would already have been using `apix` but, for those that were not,
  this results in an improved environment for device drivers through providing
  per-CPU interrupts, and more of them;
  see [illumos issue 12967](https://www.illumos.org/issues/12967) for more
  details and other benefits. In the unlikely event that this change causes
  problems, it can be effectively reverted by setting `apix_enable=0` in
  `/etc/system`.

* Support for the SMB 3.1.1 protocol in the SMB server.

* Support for DKIOCFREE with NVMe devices.

* It is now possible to disable the system Hypervisor Multiplex Framework (HMA)
  completely by setting `hma_disable=1` in `/etc/system`. This is necessary
  to allow the use of Virtualbox on AMD processors.

* A more complete `/usr/dict/words` file is now available by default, and a
  limited number of other dictionaries are provided. These can be selected via
  the `words` mediator - run `pkg mediator -a words` to see the available
  options. The default dictionary is `american-english`.

* `openjdk11` is now available and will be the default system java
  implementation if installed. As for most components, the default openjdk
  version can be changed via a mediator:
  ```
  pkg set-mediator -V 1.8 openjdk
  ```
  > Thanks to Peter Tribble for doing the work to get OpenJDK11 running on
  > illumos.

* Several NDMP fixes have been imported from Nexenta and v4 RFC conformance
  has been corrected for restore operations.

* Support for SMBIOS 3.4.

### Commands and Command Options

* `/usr/bin/awk` is now a link to `nawk`. The previous version of `awk` is
  still available as `oawk`.

* `zpool create` has gained support for `-o feature@<feature>=disabled` to
  selectively disable features at create time.

* `svcadm` has gained the `-c` option to allow a comment to be added to a
  service operation.

* `crontab` has gained the `-u` option for better compatibility with other
  systems, and to allow an authorised user to more easily replace another
  user's crontab - `crontab -u <user> <new file>`

* The `grep` command now supports `-L`, `-o` and `--label`.

* `grep` would previously ignore `-h` when combined with `-r`.

* Several bugs have been fixed in the `sed` utility.

* The `demangle` command has been added.

* `rsync` now supports ZStandard and lz4 compression algorithms as well as
  xxhash for hashing.

### LX zones

* It is now possible to completely disable IPv6 support in an lx zone by
  setting the `ipv6` zonecfg attribute to `false`.

* The OmniOS Association now maintains lx images at
  https://github.com/omniosorg/lx-images

* There have been many fixes and updates to the lx zone brand for this release,
  including:

  * Fixes to better support modern distributions using systemd.

  * An LX zone could end up with a process that got stuck consuming significant
    CPU and not reaping its children.

  * Emulation of `/proc/self/exe` was not robust and could fail if called by
    a binary located in a lofs filesystem.

* The `IP_RECVTOS` and `IPV6_RECVTCLASS` socket options are now supported.

### Bhyve

* bhyve has received many updates and fixes from FreeBSD and illumos.

* DISCARD/TRIM support. Support has also been added to `vioblk` so that
  sparse virtual disks can be hole-punched from the guest (`zpool trim` in
  the case of an illumos guest).

### ZFS

* ZFS can now use hardware acceleration for raidz calculations where
  supported by the CPU.

* ZFS boot is now more able to find devices where the physical device path
  has changed.

* It is now possible to boot from a root pool which has (or has had in the past)
  an slog device.

* The private ZFS libraries have been refactored with common code being
  split out into a new libzfsutil library. One of the benefits of this is
  that the `zdb` command no longer needs root privileges for some operations.

* ZFS channel programs have gained `zfs.sync.inherit` and `zfs.check.inherit`
  to allow clearing of properties on a dataset, restoring them to the default
  of being inherited from an ancestor.

### Package Management

* `pkg rehydrate` now works properly for global zone IPS images.

* When `pkg` is unable to find a solution for an upgrade, retrying the update
  command with `-vv` will now produce additional information which may help
  with determining the underlying cause.

* The optional OmniOS Extra package repository is available and will be
  added by default for new interactive installations of OmniOS (unless
  disabled through the post-install configuration menu). It can also be added
  retrospectively to upgraded systems using:
  ```
  pkg set-publisher -O https://pkg.omnios.org/r151036/extra extra.omnios
  ```
  A [full list of packages](https://pkg.omniosce.org/r151036/extra/en/catalog.shtml) is available.

### Hardware Support

* Support for temperature, voltage and current sensors in CPUs and other
  hardware has been added. Nodes are created for these under `/dev/sensors/`,
  they are monitored by the fault management framework and can be seen in the
  diagnostic output from `/usr/lib/fm/fmd/fmtopo -V`.

* Support for Chip/Smart Card Interface (CCID) devices.

* Improvements to the `mlxcx` (Mellanox ConnectX-4/5/6 Ethernet controller)
  driver.

* Support for BCM57765 family devices through the `bge` driver.

* Many improvements to the `i40e` driver have been incorporated.

* Fixes for running under AWS.

* Hyper-V now supports larger MTUs for network interfaces.

### Developer Features

* `gcc10` is now the default compiler.

* `perl` has been updated to 5.32.

* `openjdk11` is now available, see _System Features_ above.

* The `onu` command has been improved so that it more cleanly transitions
  to an ONU environment built from illumos-gate, and so that zones will
  still boot in the new environment (for brands supported by illumos-gate).

* The `libutempter` library is now available.

* Support for the `futimes()` and `lutimes()` functions in libc.

* The `open(2)` and `openat(2)` functions now support the `O_DIRECT` flag.

* Packages can add entries to `/etc/inet/services` by delivering a fragment
  file to `/etc/inet/services.d/`.

* The system now provides a C11 `uchar.h` header file.

* The `IP_RECVTOS` socket option is now supported.

### Deprecated features

* Python 2 is now end-of-life and will not receive any further updates. The
  `python-27` package is still available for backwards compatibility but will
  be maintained only on a best-efforts basis.

* OpenSSL 1.0.x is deprecated and reached end-of-support at the end of 2019.
  OmniOS has completely transitioned to OpenSSL 1.1.1 but retains the OpenSSL
  1.0.2 libraries for backwards compatibility. The 1.0.2 libraries are
  maintained solely on a best-efforts basis.

### Package changes

| Package | Old Version | New Version |
| :------ | :---------- | :---------- |
| **compress/brotli** | _New_ | 1.0.9
| **compress/lz4** | _New_ | 1.9.2
| **compress/zstd** | _New_ | 1.4.5
| data/iso-codes | 4.4 | 4.5.0
| database/sqlite-3 | 3.31.1 | 3.33.0
| **developer/gcc10** | _New_ | 10.2.0
| ~~developer/gcc8~~ | 8.4.0 | _Removed_
| developer/gnu-binutils | 2.34 | 2.35.1
| developer/nasm | 2.14.2 | 2.15.5
| developer/parser/bison | 3.5.3 | 3.7.2
| developer/swig | 4.0.1 | 4.0.2
| developer/versioning/git | 2.26.2 | 2.28.0
| developer/versioning/mercurial | 5.3.1 | 5.5.1
| **driver/misc/ccid** | _New_ | 0.5.11
| editor/vim | 8.2.422 | 8.2.1484
| library/c++/sigcpp | 3.0.3 | 3.0.4
| library/glib2 | 2.64.1 | 2.66.1
| library/libidn | 1.35 | 1.36
| library/mpc | 1.1.0 | 1.2.0
| library/mpfr | 4.0.2 | 4.1.0
| library/nspr | 4.25 | 4.29
| library/nspr/header-nspr | 4.25 | 4.29
| library/pcre2 | 10.34 | 10.35
| library/python-2/setuptools-27 | 46.1.3 | 46.4.0
| library/python-3/asn1crypto-37 | 1.3.0 | 1.4.0
| library/python-3/attrs-37 | 19.3.0 | 20.2.0
| library/python-3/cffi-37 | 1.14.0 | 1.14.3
| library/python-3/cheroot-37 | 8.3.0 | 8.4.5
| library/python-3/cherrypy-37 | 18.5.0 | 18.6.0
| library/python-3/coverage-37 | 5.0.4 | 5.3
| library/python-3/cryptography-37 | 2.8 | 3.1.1
| library/python-3/idna-37 | 2.9 | 2.10
| library/python-3/importlib-metadata-37 | 1.5.2 | 2.0.0
| library/python-3/jsonrpclib-37 | 0.4.0 | 0.4.1
| library/python-3/mako-37 | 1.1.2 | 1.1.3
| library/python-3/meson-37 | 0.53.2 | 0.55.3
| library/python-3/more-itertools-37 | 8.2.0 | 8.5.0
| library/python-3/pycodestyle-37 | 2.5.0 | 2.6.0
| library/python-3/pycurl-37 | 7.43.0.5 | 7.43.0.6
| library/python-3/pyrsistent-37 | 0.16.0 | 0.17.3
| library/python-3/pytz-37 | 2019.3 | 2020.1
| library/python-3/setuptools-37 | 46.1.3 | 50.3.0
| library/python-3/six-37 | 1.14.0 | 1.15.0
| library/python-3/tempora-37 | 3.0.0 | 4.0.0
| library/python-3/zipp-37 | 3.1.0 | 3.2.0
| library/security/openssl | 1.1.1.7 | 1.1.1.8
| library/unixodbc | 2.3.7 | 2.3.9
| network/dns/bind | 9.11.18 | 9.11.23
| network/openssh | 8.2.1 | 8.4.1
| network/openssh-server | 8.2.1 | 8.4.1
| network/rsync | 3.2.2 | 3.2.3
| **runtime/java/openjdk11** | _New_ | 11.0.9.11
| runtime/perl | 5.30.3 | 5.32.0
| runtime/python-37 | 3.7.8 | 3.7.9
| security/sudo | 1.8.31.1 | 1.9.3.1
| ~~service/network/ntp~~ | 4.2.8.14 | _Removed_
| service/network/ntpsec | 1.1.8 | 1.1.9
| shell/bash | 5.0.16 | 5.0.18
| system/bhyve/firmware | 20190904 | 20200501
| system/cpuid | 1.7.4 | 1.7.6
| system/data/hardware-registry | 2020.2.22 | 2020.9.15
| **system/ksensor** | _New_ | 0.5.11
| system/library/dbus | 1.12.16 | 1.12.20
| system/library/g++-runtime | 9 | 10
| system/library/gcc-runtime | 9 | 10
| system/library/gccgo-runtime | 9 | 10
| system/library/gfortran-runtime | 9 | 10
| system/library/gobjc-runtime | 9 | 10
| system/library/libdbus | 1.12.16 | 1.12.20
| **system/library/libpcsc** | _New_ | 0.5.11
| **system/library/libutempter** | _New_ | 0.5.11
| system/library/mozilla-nss | 3.51 | 3.57
| system/library/mozilla-nss/header-nss | 3.51 | 3.57
| system/management/snmp/net-snmp | 5.8 | 5.9
| ~~system/network/tests~~ | 0.5.11 | _Removed_
| system/pciutils | 3.6.4 | 3.7.0
| system/pciutils/pci.ids | 2.2.20200222 | 2.2.20200819
| **system/rsyslog** | _New_ | 8.2008.0
| system/test/fio | 3.19 | 3.23
| **system/test/nettest** | _New_ | 0.5.11
| system/virtualization/open-vm-tools | 11.0.5 | 11.1.5
| **system/zones/brand/lx/platform** | _New_ | 0.5.11
| terminal/tmux | 3.0 | 3.1.2
| text/gawk | 5.0.1 | 5.1.0
| text/gnu-gettext | 0.20.2 | 0.21
| text/gnu-grep | 3.4 | 3.5
| **text/words** | _New_ | 20200724
| web/curl | 7.71.1 | 7.72.0


<a href="https://omnios.org">
<img src="https://omnios.org/OmniOSce_logo.svg" height="128">
</a>

# Release Notes for OmniOSce v11 r151040
![#f03c15](https://placehold.it/15/f03c15/000000?text=+) ** These are DRAFT release notes ** ![#f03c15](https://placehold.it/15/f03c15/000000?text=+)

Stable Release, TBC of November 2021

`uname -a` shows `omnios-r151040-XXX`

r151040 release repository: https://pkg.omnios.org/r151040/core

## Upgrade Notes

Upgrades are supported from the r151038 release only. If upgrading from an
earlier version, upgrade in stages, referring to the table at
<https://omnios.org/upgrade>.

## New features since r151038

### System Features

* Improved NVMe Hot-plug support.

* Support for promiscuous mode on _vioif_ network interfaces.

* Support for local [netgroups](https://man.omnios.org/netgroup.4).

* It is now possible to easily tune the kernel's `segkpsize` variable if
  required - see [eeprom(1M)](https://man.omnios.org/eeprom#OPERANDS).

### Commands and Command Options

* The `nvmeadm list` command now supports options to enable parsable output.

* `prtvtoc` has been updated to include the sector count for MBR disks.

* The `passmgmt` utility has a new option to allow setting a user's password
  hash directly.

* `tftp` now supports command history and editing.

* `netstat` has been updated to better disambiguate between sockets and also
  to prevent showing duplicated data for UDP source and destination addresses.

* System components now support higher baud rates.

### Libraries and Library Functions

* The [memrchr(3C)](https://man.omnios.org/memrchr.3C) function has been added
  to the C library.

### Zones

* It is now possible to specify, in the brand, what happens when a zone's
  init process exits.

* A default set of security flags can be specified for a brand, and all zones
  of that brand will inherit these by default.

### LX zones

* Improved support for recent versions of _systemd_ and distributions which
  use it.

* The `/proc/sys/kernel/random/uuid` device has been added.

* `/proc/<pid>/fdinfo` is now available.

* systemd units that assert `NoNewPrivs`, no longer fail to start.

### Bhyve

* Many improvements from upstream illumos and FreeBSD.

* The bhyve hypervisor and the bhyve branded zone have received several updates
  that enable running with fewer resources and fewer privileges than before.

* bhyve VNC sessions are now named based on the underlying virtual machine name
  rather than always being called "bhyve".

* It is now possible to provide `cloud-init` configuration information to
  bhyve guests. This includes networking configuration and initial passwords/
  SSH keys. See cloud-init in [bhyve(5)](https://man.omnios.org/bhyve.5) for
  more information.

* bhyve now supports virtio-9p (aka VirtFS) filesystem sharing to guests.
  This is configured through the new `virtfs[N]` zone attribute as described
  in [bhyve(5)](https://man.omnios.org/bhyve.5).

* Additional network backends are available for bhyve, including an emulated
  `e1000` interface type.

* It is now possible to set memory aside for exclusive bhyve use using the
  `/usr/lib/rsrvrctl` command. This feature is not yet integrated into the
  OmniOS bhyve brand.

* bhyve guest metrics are now exposed as kstats.

### Package Management

* A new debug flag is available for troubleshooting connectivity and
  certificate issues. For example:
  ```
  pkg -Dcurlverbose=1 refresh
  ```

### Hardware Support

* The Time Stamp Counter (TSC) register calibration now occurs earlier in the
  boot process and a new plugin architecture allows for better calibration
  in different environments. Specific support has been added for VMware.

* Support for FTDI FT232H serial interfaces

### Developer Features

* Version 11 of the `gcc` compiler is available in this release and, if
  installed, becomes the system default version of gcc unless the mediator is
  manually changed.

* This release includes OpenSSL 3.0.0 which is mediated along with the other
  provided OpenSSL versions. The default value for the `openssl` mediator
  version is still 1.1 but will change to 3 in a future release. OpenSSL 3
  can be selected as the default system version by installing the package and
  changing the mediator, i.e.
  ```
  pkg install openssl-3
  pkg set-mediator -V 3 openssl
  ```
  To compile software against version 3 regardless of the mediator setting, set
  compile environment variable such as:
  ```
  CFLAGS=-I/usr/ssl-3/include LDFLAGS=-L/usr/ssl-3/lib/amd64
  ```

* `perl` has been updated to version 5.34

* There have been several improvements and fixes to core file generation.

* A utility is available as `/usr/lib/pci/pcieadm` that allows viewing
  the PCIe device tree and configuration space. This is not a stable interface
  and may change in subsequent releases.

* The Sun::Solaris::{Privilege,Ucred} perl modules have been re-introduced.

* The DLPI interface has been updated to provide new rx-only DLPI
  promiscuous modes - see
  [dlpi\_promiscon(3DLPI)](https://man.omnios.org/dlpi_promiscon).

### Deprecated features

* Version 9 of the `gcc` compiler has been removed in this release.

* OpenSSH in OmniOS no longer provides support for GSSAPI key exchange.
  This was removed in release r151038.

* Python 2 is now end-of-life and will not receive any further updates. The
  `python-27` package is still available for backwards compatibility but will
  be maintained only on a best-efforts basis.

* OpenSSL 1.0.x is deprecated and reached end-of-support at the end of 2019.
  OmniOS has completely transitioned to OpenSSL 1.1.1 and will begin to move
  to OpenSSL 3 in a future release, but retains the OpenSSL 1.0.2 libraries for
  backwards compatibility. The 1.0.2 libraries are maintained solely on a
  best-efforts basis.

### Package changes


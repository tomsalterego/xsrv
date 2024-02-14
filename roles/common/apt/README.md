# xsrv.common.apt

This role will configure APT package management on a Debian-based system:

- package sources ([`sources.list`](https://wiki.debian.org/SourcesList))
- never overwrite configuration files modified by the admin during upgrades
- don't install `recommended` packages
- automatic [security upgrades](https://wiki.debian.org/UnattendedUpgrades)
- autoremove automatically installed packges that are no longer required
- purge configuration files of removed packages, nightly
- (optional) [apt-listbugs](https://manpages.debian.org/bullseye/apt-listbugs/apt-listbugs.1.en.html)


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)


```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.apt
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including apt
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables


## Usage

- Upgrade all packages immediately, using unattended-upgrades: `TAGS=utils-apt-unattended-upgrade`. This allows upgrading immediately, without waiting for the daily unattended-upgrades timer to run. It respects the `apt_unattended_upgrades_origins_patterns` variable/`Origins-Pattern` setting.
- Upgrade all packages immediately: `TAGS=utils-apt-upgrade`. This will upgrade all upgradable packages, regardless of unattended-upgrades configuration (in particular the `apt_unattended_upgrades_origins_patterns` variable/`Origins-Pattern` setting).

## Troubleshooting

**Package installation blocked by apt-listbugs:** When `apt_listbugs: yes` is set, apt-listbugs will, by default, prevent installation/upgrade of packages on which grave/serious bugs have been reported in the [Debian Bug Tracking System (BTS)](https://www.debian.org/Bugs/). The output of package management tasks will show something similar to:

```
grave bugs of ntpsec (→ 1.2.2+dfsg1-1) <Outstanding>
 b1 - #1038422 - ntpsec: ntpd segmentation fault in libcrypto.so[7f6d3ecc5000+278000]
serious bugs of usrmerge (→ 35) <Outstanding>
 b2 - #1033167 - usrmerge: messes with /etc/shells
serious bugs of bind9-libs (1:9.16.42-1~deb11u1 → 1:9.18.16-1~deb12u1) <Outstanding>
 b3 - #1014503 - bind9-libs: please provide libraries that enable reverse dependencies to use them
serious bugs of ca-certificates-java (20190909 → 20230103) <Outstanding>
 b4 - #1037478 - ca-certificates-java: Loop in the execution of the trigger
 b5 - #1039472 - ca-certificates-java: openjdk-17 update caused install regressions (Fixed: ca-certificates-java/20230620)
[...]
Summary:
 gcc-12-base(1 bug), usrmerge(1 bug), debianutils(1 bug), ntpsec(1 bug), bind9-libs(1 bug), ca-certificates-java(3 bugs)
**********************************************************************
****** Exiting with an error in order to stop the installation. ******
**********************************************************************
```

In that case you should check the bug report details on https://bugs.debian.org/BUGNUMBER, and if you find that the risk is acceptable or the bug does not apply to your particular setup, you can either:
- add the bug number to [`apt_listbugs_ignore_list`](defaults/main.yml) and re-run the playbook/common role/`apt-listbugs` tag before retrying package installation
- set `apt_listbugs_action` to `force-yes` and re-run the playbook/common role/`apt-listbugs` tag before retrying package installation
- add the bug number manually to `/etc/apt/listbugs/ignore_bugs` on the target host, temporarily

## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtags=debian
- https://stdout.root.sx/links/?searchtags=security
- https://stdout.root.sx/links/?searchtags=packaging
- https://stdout.root.sx/links/?searchtags=linux
- https://stdout.root.sx/links/?searchtags=admin

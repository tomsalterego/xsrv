# xsrv.common.utils

This role provides automated procedures for periodic maintenance of Debian servers:
- upgrade hosts from Debian 10 _Buster_ to Debian 12 _Bullseye_
- upgrade hosts from Debian 11 _Bullseye_ to Debian 12 _Bookworm_
- reboot or shutdown hosts

All tasks in this role are tagged `never` and will never run, unless one of their tags is explicitly passed on the command line.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.utils
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including utils
```

No configuration variables.

## Usage

- Upgrade from Debian 10 to Debian 11: `TAGS=utils-debian10to11 xsrv deploy` or `ansible-playbook --tags utils-debian10to11 playbook.yml`
- Upgrade from Debian 11 to Debian 12: `TAGS=utils-debian11to12 xsrv deploy` or `ansible-playbook --tags utils-debian11to12 playbook.yml`. 
- Reboot the host immediately: `TAGS=utils-reboot xsrv deploy default my.CHANGEME.org`
- Shut down the host immediately: `TAGS=utils-shutdown xsrv deploy default my.CHANGEME.org`

Upgrading from one distribution version to another can take a while, and some services may become shortly unavailable during the operation. You can follow progress by watching `apt` logs on the host (or `/var/log/syslog` if the [`monitoring_rsyslog`](../monitoring_rsyslog) role is deployed). This role will perform all required tasks to cleanly upgrade hosts running [xsrv roles](../../). If you have installed other services on the host, you need to check for possible manual upgrade steps for these. Always read the [release](https://www.debian.org/releases/stable/amd64/release-notes/) for the release you are upgrading to, before performing the upgrade.


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtags=debian
- https://stdout.root.sx/links/?searchtags=linux
- https://stdout.root.sx/links/?searchtags=admin

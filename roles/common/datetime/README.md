# xsrv.common.datetime

This role will configure date and time related settings on Debian-based systems.

- installation of `systemd-timesyncd` time synchronization service
- timezone configuration


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.datetime
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including datetime
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables


## Usage


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtags=admin+time

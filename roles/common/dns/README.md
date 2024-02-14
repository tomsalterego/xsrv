# xsrv.common.dns

This role will configure the DNS resolver through `/etc/resolv.conf` on Debian-based systems.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.dns
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including dns
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

- https://stdout.root.sx/links/?searchtags=dns

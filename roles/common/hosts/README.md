# xsrv.common.hosts

This role will configure [`/etc/hosts` file](https://en.wikipedia.org/wiki/Hosts_(file)) entries on Debian-based systems.

- [hosts](tasks/hosts.yml) file (`/etc/hosts`)

All components can be disabled/enabled independently.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.hosts
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including hosts
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

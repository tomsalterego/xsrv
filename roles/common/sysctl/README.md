# xsrv.common.sysctl

This role will configure kernel seetings through [`sysctl`](https://en.wikipedia.org/wiki/Sysctl) on Debian-based systems.

- networking
- swap/memory management
- security settings
- kernel modules


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.sysctl
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including sysctl
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

- https://stdout.root.sx/links/?searchtags=security+linux
- https://stdout.root.sx/links/?searchtags=network
- https://stdout.root.sx/links/?searchtags=perf
- https://stdout.root.sx/links/?searchtags=security
- https://stdout.root.sx/links/?searchtags=linux

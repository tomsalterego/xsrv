# xsrv.common.cron

This role will configure the `cron` task scheduler on Debian-based systems.

- restrict users allowed to use cron
- harden permissions on system-wide cron files
- configure logging of cron jobs


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.cron
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including cron
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables.


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtext=cron

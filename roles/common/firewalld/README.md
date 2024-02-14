# xsrv.common.firewalld

This role will configure the [firewalld](https://firewalld.org/) firewall management system on Debian-based systems.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.firewalld
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including firewalld
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables



## Usage

All roles from the `nodiscc.xsrv` collection will automatically set up appropriate rules when this role is deployed. See each role's `*_firewall_zones` configuration variables.

- **Inspect firewall status:** use the `utils-firewall-info` ansible tag (`TAGS=utils-firewalld-info xsrv deploy`) and open `data/firewalld-info-HOSTNAME.log` on the controller.


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtags=firewall
- https://stdout.root.sx/links/?searchtags=network+security

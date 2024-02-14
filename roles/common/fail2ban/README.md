# xsrv.common

This role will configure the [fail2ban](https://github.com/fail2ban/fail2ban) intrusion prevention system on Debian-based systems.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.fail2ban
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including fail2ban
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables


## Usage

- **Inspect fail2ban status/banned IP list:** use the `utils-fail2ban-get-banned` ansible tag (`TAGS=utils-fail2ban-get-banned xsrv deploy`) and open `/data/fail2ban-banned-HOSTNAME.txt` on the controller.


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchterm=fail2ban
- https://stdout.root.sx/links/?searchtags=network+security
- https://stdout.root.sx/links/?searchtags=firewall

# xsrv.common.msmtp

This role will configure [`msmtp`](https://marlam.de/msmtp/msmtp.html) on Debian-based systems. `msmtp` provides a `sendmail` program that can be used by services and applications to send mail through an external SMTP mail relay.

You must enable `msmtp` explicitely through `setup_msmtp: yes` in `host_vars`, see below.


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.common.msmtp
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including msmtp


# required variables:
# host_vars/my.CHANGEME.org/my.CHANGEME.org.yml
setup_msmtp: yes
# the following msmtp_* variables are required is setup_msmtp: yes
msmtp_host: "smtp.CHANGEME.org"
msmtp_port: 587
msmtp_admin_email: "CHANGEME"

# ansible-vault edit host_vars/my.example.org/my.example.org.vault.yml
msmtp_username: "CHANGEME"
msmtp_password: "CHANGEME"
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

- https://stdout.root.sx/links/?searchtags=mail
- https://stdout.root.sx/links/?searchermss=msmtp

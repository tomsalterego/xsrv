# xsrv.common.ssh

This role will configure the OpenSSH server on Debian-based systems.

- security hardening
- authorized keys for the ansible user account
- logging
- chrooted [SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol)-only user accounts


## Requirements/dependencies/example playbook

See [meta/main.yml](meta/main.yml)

```yaml
# playbook.yml
- hosts: my.CHANGEME.org
  roles:
    - nodiscc.xsrv.ssh
    # - nodiscc.xsrv.common # (alternative) basic debian server configuration including ssh
```

See [defaults/main.yml](defaults/main.yml) for all configuration variables

## Usage

- SSH access: `ssh user@my.CHANGEME.org` or `xsrv shell default my.CHANGEME.org`
  - Windows clients: [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/)
- SFTP access: `sftp://user@my.CHANGEME.org`
  - Linux clients: [Thunar](http://docs.xfce.org/xfce/thunar/start), [Nautilus](https://wiki.gnome.org/action/show/Apps/Nautilus), [Dolphin](https://www.kde.org/applications/system/dolphin/), `sftp`, `rsync`, `scp`,
  - Windows clients: [WinSCP](https://winscp.net/eng/index.php)


## Tags

<!--BEGIN TAGS LIST-->
```
```
<!--END TAGS LIST-->


## License

[GNU GPLv3](../../LICENSE)


## References

- https://stdout.root.sx/links/?searchtags=ssh

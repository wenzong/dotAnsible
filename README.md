dotAnsible
==============

The project intends to use [ansible](https://github.com/ansible/ansible) to replace [dotfiles](../../../dotfiles).

Inspired by [erning-ansible](https://github.com/erning/erning-ansible)

--------------

## Quick Start

```
ansible-playbook -i localhost playbook.yml [--tags "bin,vim,tmux"]
```

## Todo

+ Ansible install Ansible
+ bash
    + configuration
+ awesome(Debian/Gentoo)
+ pyenv/rbenv
+ system packages
    + Debian/Gentoo
    + OSX(homebrew)
+ other configuration
    + keyboard speed
        + xset for Linux
        + defaults writes NSGlobalDomain KeyRepease for OSX
    + Gentoo
        + set layman/portage/eix
    + Debian
        + mirror
    + pentadactyl(firefox)
    + background image change
    + Linux locale/ntp/timezone/...
+ supervisord (and tunnel settings)
+ proxychain
+ mutt

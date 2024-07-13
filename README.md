dotAnsible
==============

The project intends to use [ansible](https://github.com/ansible/ansible) to replace [dotfiles](../../../dotfiles).

Inspired by [erning-ansible](https://github.com/erning/erning-ansible)

--------------

## Prerequisite

```
$ brew install ansible
$ ansible-galaxy collection install community.general # $HOME/.ansible/collections
```

## Quick Start

```
$ ansible-playbook -i inventory.local playbook.yml [--tags "bin,vim,tmux"] [-C -D]
```

## Todo

+ ~~Ansible install Ansible~~
+ Terminal
    + chsh -s bash
    + .bashrc/.bash_profile
    + (OSX)Terminal Profile
+ Browser
    + Plugins/Extensions & Configurations
+ Sync Utils
    + iCloud
    + Dropbox
    + Nextcloud
+ Packages
    + Debian/Gentoo
    + OSX(homebrew)
+ Configurations
    + keyboard speed
        + xset for Linux
        + defaults writes NSGlobalDomain KeyRepease for OSX
    + Gentoo
        + set layman/portage/eix
    + Debian
        + mirror
    + Linux locale/ntp/timezone/...
    + OpenVPN
    + OpenSSH
    + git configs: .gitconfig
    + supervisord
    + proxychain
    + workspace layout
+ SSH keypair
    + GitHub
    + GitLab
    + Hosts

## CheatSheet

+ check vim local changes

```
$ ansible-playbook -i inventory.local playbooks/devtools.yml -D -C --tags vim

$ diff -r playbooks/roles/vim/files/after/ftplugin/ $HOME/.vim/after/ftplugin/

$ vimdiff playbooks/roles/vim/templates/vimrc $HOME/.vimrc
```

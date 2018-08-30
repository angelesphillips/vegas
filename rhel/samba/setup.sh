#!/bin/bash

dnf -y install ansible git python2-dnf python2-libselinux vim-enhanced
echo "set ai et ts=2 sts=2 sw=2" > ~/.vimrc

# root should also run "ssh-keygen" and then "ssh-copy-id root@localhost"

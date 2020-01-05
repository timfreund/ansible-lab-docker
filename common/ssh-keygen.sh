#!/usr/bin/env bash

set -x
for d in /home/ansible/.ssh /home/ansible/hosts-home/.ssh
do
    mkdir -p ${d}
    chmod 700 ${d}
done

ssh-keygen -f /home/ansible/.ssh/id_rsa
cp /home/ansible/.ssh/id_rsa.pub /home/ansible/.ssh/authorized_keys
cp /home/ansible/.ssh/id_rsa.pub /home/ansible/hosts-home/.ssh/authorized_keys

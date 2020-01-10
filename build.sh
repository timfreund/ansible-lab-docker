#!/usr/bin/env bash

destinationtags=(dockerregistry.vpn.freunds.net:5000/freund/ansible-lab timfreund/ansible-lab)

set -x
for variant in `ls -d -- */ | grep -v common | sed -e 's|/||'`
do
    cp common/* ${variant}
    cd ${variant}
    for tag in ${destinationtags[@]}
    do
        docker build -t ${tag}:${variant} .
    done;
    cd ..
done

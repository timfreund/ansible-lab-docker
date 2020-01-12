#!/usr/bin/env bash

destinationtags=(dockerregistry.vpn.freunds.net:5000/freund/ansible-lab timfreund/ansible-lab)

set -x
for variant in `ls -d -- */ | egrep -v "common|alm" | sed -e 's|/||'`
do
    cp common/* ${variant}
    cd ${variant}
    for tag in ${destinationtags[@]}
    do
        docker build -t ${tag}:${variant} .
    done;
    cd ..
done

# ... need a better way of building images
cd alm
for tag in ${destinationtags[@]}
do
    docker build -t ${tag}:alm .
done
cd ..

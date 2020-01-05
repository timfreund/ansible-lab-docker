#!/usr/bin/env bash

set -x
for variant in `ls -d -- */ | grep -v common | sed -e 's|/||'`
do
    cp common/* ${variant}
    cd ${variant}
    docker build -t neumann.vpn.freunds.net:5000/freund/ansible-lab:${variant} .
    docker push neumann.vpn.freunds.net:5000/freund/ansible-lab:${variant}
    cd ..
done

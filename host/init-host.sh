#!/bin/sh

PREFIX=/usr/local/htcNet-scripts

cd /usr/local
git clone git@github.com:htc550605125/htcNet-scripts.git

if [ $? != 0 ]; then
    exit -1
fi

cp "$PREFIX"/client/htcNet.conf /etc/htcNet.conf

"$PREFIX"/host/update-host.sh

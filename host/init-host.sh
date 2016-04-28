#!/bin/sh

PREFIX=/usr/local/htcNet-scripts

cd /usr/local
git clone ssh://git@github.com:htc550605125/htcNet-scripts.git

cp "$PREFIX"/client/htcNet.conf /etc/htcNet.conf

"$PREFIX"/host/update-host.sh

#!/bin/sh

. /etc/htcNet.conf

cd "$PREFIX"

git pull origin master

cp "client/*.sh" "htcNet"
tar -czvf "htcNet/client.tar.gz" client

SCRIPTS="$PREFIX/host/*.sh"
for SCRIPT in $SCRIPTS
do
    ln -sf $SCRIPT /usr/bin
done

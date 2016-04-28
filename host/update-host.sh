#!/bin/sh

[ -f /etc/htcNet.conf ] && . /etc/htcNet.conf

cd "$PREFIX"

git pull origin master

SCRIPTS="client/*.sh"
cp $SCRIPTS "htcNet"
tar -czvf "htcNet/client.tar.gz" client

SCRIPTS="$PREFIX/host/*"
for SCRIPT in $SCRIPTS
do
    [[ $date !=~ ^.*\.conf$ ]] && ln -sf $SCRIPT /usr/bin
done

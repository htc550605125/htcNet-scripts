#!/bin/sh

PREFIX=/usr/local/htcNet-scripts

pushd
cd "$PREFIX"

cp "client/*.sh" "htcNet"

tar -czvf "htcNet/client.tar.gz" client
tar -czvf "htcNet/host.tar.gz" host

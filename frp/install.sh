#!/bin/bash -e

if [ -f frpd.lock ]
then
    echo 'frpd is installed, please config !!!'
else
    mkdir -p ../logs/frps/ ../logs/frpc/
    touch ../logs/frps/frps.log ../logs/frpc/frpc.log

    cp -rf frps/frps.toml.example frps/frps.toml
    cp -rf frpc/frpc.toml.example frpc/frpc.toml

    touch frpd.lock

    echo 'Waiting for password reset...'

    chmod +x resetpwd.sh

    sh resetpwd.sh
fi

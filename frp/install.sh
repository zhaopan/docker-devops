#!/bin/bash -e

if [ -f frpd.lock ]
then
    echo 'frpd is installed, please config !!!'
else
    mkdir -p ../logs/frps/ ../logs/frpc/
    touch ../logs/frps/frps.log ../logs/frpc/frpc.log

    cp -rf frps/frps.ini.example frps/frps.ini
    cp -rf frpc/frpc.ini.example frpc/frpc.ini

    touch frpd.lock

    echo 'Waiting for password reset...'

    chmod +x resetpwd.sh

    sh resetpwd.sh
fi

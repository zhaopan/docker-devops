#!/bin/bash -e

main(){
    if [ -f frpd.lock ]
    then
        echo 'frpd is installed, please config !!!'
    else
        cp frps/frps.ini.example frps/frps.ini
        cp frpc/frpc.ini.example frpc/frpc.ini

        TOKEN=$(openssl rand -base64 9)
        DASHBOARD=$(openssl rand -base64 9)
        sed -i "s/token\s=\sXsZ75UtIDuSD/token = ${TOKEN}/" frps/frps.ini
        sed -i "s/token\s=\sXsZ75UtIDuSD/token = ${TOKEN}/" frpc/frpc.ini
        sed -i "s/dashboard_pwd\s=\sc9l9YTdEKDe3/dashboard_pwd = ${DASHBOARD}/" frps/frps.ini
        echo 'reset password done !!!'
        touch frpd.lock
    fi
}

main

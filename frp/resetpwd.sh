#!/bin/bash -e

if [ -f frpd.lock ]
then
    TOKEN=$(openssl rand -base64 9)
    DASHBOARD=$(openssl rand -base64 9)

    # 修改服务端TOKEN
    sed -i "/^token/c token = ${TOKEN}" frps/frps.toml

    # 修改客户端TOKEN
    sed -i "/^token/c token = ${TOKEN}" frpc/frpc.toml

    # 修改管理密码
    sed -i "/^dashboard_pwd/c dashboard_pwd = ${DASHBOARD}" frps/frps.toml

    echo "TOKEN: ${TOKEN}"
    echo "DASHBOARD: ${DASHBOARD}"
    echo 'reset password done !!!'

else
    echo 'frpd is not installed, please install... !!!'
fi

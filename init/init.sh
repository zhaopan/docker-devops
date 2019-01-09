#!/bin/bash

##
## mkdir some container configs
##
mkdir -p ~/nginx
mkdir -p ~/nginx/html
mkdir -p ~/mysql
mkdir -p ~/mysql/data
mkdir -p ~/gogs

##
## cp tmp-container configs
##

# nginx
docker cp init_tmpnginx_1:/etc/nginx/nginx.conf ~/nginx/nginx.conf
docker cp init_tmpnginx_1:/etc/nginx/conf.d ~/nginx

# mysql
docker cp init_tmpmysql_1:/etc/mysql/my.cnf ~/mysql/my.cnf
docker cp init_tmpmysql_1:/etc/mysql/conf.d ~/mysql

# drop tmp-container
docker rm -f init_tmpmysql_1 init_tmpnginx_1
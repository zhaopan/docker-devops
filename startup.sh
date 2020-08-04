#!/bin/bash

##
## startup
##

cd init
docker-compose up -d
chmod +x ./init.sh
./init.sh

cd ..
sudo tee /mnt/nginx/conf.d/gogs.conf <<-'EOF'
server {
    listen       80;
    server_name  git.github.com;
    client_max_body_size 50m;
    location / {
        # 一定要注意这里是docker容器的内网地址+端口,以"/"结尾,不然会报错。
        proxy_pass http://gogs:3000/;
        proxy_redirect default;
        proxy_buffer_size 64k;
        proxy_buffers 32 32k;
        proxy_busy_buffers_size 128k;
    }
}
EOF
docker-compose up -d

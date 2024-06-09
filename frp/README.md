# frp

Docker Image packaging for Frp.

(amd64, arm32v6, arm32v7, arm64v8)

## init

```bash
cd frp
chmod +x install.sh
sh install.sh
```

## docker install

```bash
# docker start frps
docker run --restart=always --network host -d -v /etc/frp/frps.toml:/etc/frp/frps.toml --name frps zhaopan/frps

# docker start frpc
docker run --restart=always --network host -d -v /etc/frp/frpc.toml:/etc/frp/frpc.toml --name frpc zhaopan/frpc
```

## nginx-proxy

```bash
# frps
# 将 domain 替换成自己域名
cp nginx/conf.d/frps.conf.example nginx/conf.d/frps.conf

# frpc
# 将 localhost 替换成自己本地的IP地址
cp nginx/conf.d/frpc.conf.example nginx/conf.d/frpc.conf
```

## windows frpc

frpc.toml

eg:

```yml
[common]
# 填写服务器实际IP或解析该IP的某域名
server_addr = <REMOTE_IP>
# 填写服务器frps的主端口号，本示范中是6500
server_port = 6500
token = <TOKEN>

[http-foo.domain.com]
# 测试http
type = http
local_ip = <LOCALHOST_IP>
local_port = 80
custom_domains = foo.<domain>.com
```

将 frpc 做成系统服务并开机启动

```bash
# 方案一 nssm (推荐)：
https://nssm.cc/download

# 方案二 winsw：
https://github.com/zhaopan/nginx-for-windows-service
```

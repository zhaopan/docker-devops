# nginx

## Usage

### init
copy default.conf

```bash
# 根据自己需求修改配置文件
cp default.conf.example default.conf
```

ssl cert 相关

```bash

# 证书权限问题
chown -R root:root nginx/ssl
chmod -R 600 nginx/ssl

###
### 注意 证书路径前面不能有 '/'
###
ssl_certificate ssl/<domain>.com.pem;
ssl_certificate_key ssl/<domain>.com.key;
```

nginx shell

```bash
# 验证配置文件问题
nginx -t

# 重载 Nginx
nginx -s reload

# eg:

docker exec -it nginx nginx -t
docker exec -it nginx nginx -s reload
```

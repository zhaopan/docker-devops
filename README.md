# docker 常规脚手架

## init

```bash
# 复制配置文件，然后根据自己需求修改配置文件
cp .env.example .env
```

## build

```bash
# 编译
docker-compose build --no-cache <services-names>
```

## run

```bash
#首次执行耗时较久，耐心等待
docker-compose up -d <services-names>
```

## restart | down | rebuild

```bash
# 修改配置文件后重启即可
docker-compose restart <services-names>

# 修改 dockerfile 或者 env 文件之后 rebuild 可生效
docker-compose up -d --build --no-cache <services-names>

# 停止
docker-compose stop

# 停止并删除容器
docker-compose down

# 停止并删除容器+镜像
docker-compose down --rmi all
```

## Thanks

[fatedier/frp](https://github.com/fatedier/frp)

[snowdreamtech/frp](https://github.com/snowdreamtech/frp)

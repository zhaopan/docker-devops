ARG VERSION=latest

FROM mysql/mysql-server:${VERSION}

# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

CMD ["chmod -R 644 /etc/mysql/conf.d/docker.cnf"]

EXPOSE 3306

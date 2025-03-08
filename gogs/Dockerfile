ARG GOGS_VERSION=latest

FROM gogs/gogs:${GOGS_VERSION}

# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

EXPOSE 22
EXPOSE 3000

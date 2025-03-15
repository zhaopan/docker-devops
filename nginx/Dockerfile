ARG NGINX_VERSION=latest
FROM nginx:${NGINX_VERSION}

# 更换镜像
#RUN rm -rf /etc/apt/sources.list
#ADD sources.list /etc/apt/
## OR
#RUN sed -i s@/deb.debian.org/@/mirrors.cloud.tencent.com/@g /etc/apt/sources.list.d/debian.sources

# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone

# 更改权限
RUN mkdir /var/www \
  && chown -R www-data:www-data /var/www/ /var/log/nginx/

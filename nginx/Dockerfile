ARG ZP_MAINTAINER

FROM nginx:1.14

ARG ZP_MAINTAINER

LABEL maintainer=${ZP_MAINTAINER}

# 更换镜像
#RUN rm -rf /etc/apt/sources.list
#ADD sources.list /etc/apt/

# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

## 安装基础
#RUN apt-get update \
#  && apt-get install -y --no-install-recommends \
#  apt-utils \
#  curl \
#  sudo \
#  git \
#  vim \
#  wget \
#  net-tools \
#  && rm -rf /var/lib/apt/lists/*

# 更改权限
RUN mkdir /var/www \
  && chown -R www-data:www-data /var/www/ /var/log/nginx/

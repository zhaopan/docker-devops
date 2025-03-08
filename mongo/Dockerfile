ARG VERSION
ARG ZP_MAINTAINER

#Create MongoDB Image for MongoDB Tutorial Application
FROM mongo:${VERSION}

ARG ZP_MAINTAINER

LABEL maintainer=${ZP_MAINTAINER}

# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 27017

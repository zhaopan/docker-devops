ARG FRP_VERSION=0.58.1

FROM arm32v6/alpine:3.20

RUN cd /root \
    &&  wget --no-check-certificate -c https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_arm.tar.gz \
    &&  tar zxvf frp_${FRP_VERSION}_linux_arm.tar.gz  \
    &&  cd frp_${FRP_VERSION}_linux_arm/ \
    &&  cp frps /usr/bin/ \
    &&  mkdir -p /etc/frp \
    #&&  cp frps.toml /etc/frp \
    &&  cd /root \
    &&  rm frp_${FRP_VERSION}_linux_arm.tar.gz \
    &&  rm -rf frp_${FRP_VERSION}_linux_arm/

ENTRYPOINT /usr/bin/frps -c /etc/frp/frps.toml

ARG FRP_VERSION=0.58.1

FROM arm32v7/alpine:3.20

RUN cd /root \
    &&  wget --no-check-certificate -c https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_arm.tar.gz \
    &&  tar zxvf frp_${FRP_VERSION}_linux_arm.tar.gz  \
    &&  cd frp_${FRP_VERSION}_linux_arm/ \
    &&  cp frpc /usr/bin/ \
    &&  mkdir -p /etc/frp \
    #&&  cp frpc.toml /etc/frp \
    &&  cd /root \
    &&  rm frp_${FRP_VERSION}_linux_arm.tar.gz \
    &&  rm -rf frp_${FRP_VERSION}_linux_arm/

ENTRYPOINT /usr/bin/frpc -c /etc/frp/frpc.toml

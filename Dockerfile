FROM nginx
RUN mkdir -p ~/docker/nginx/conf
#COPY /etc/nginx/nginx.conf ~/docker/nginx/conf/nginx.conf
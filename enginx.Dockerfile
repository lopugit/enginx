FROM openresty/openresty:1.15.8.1rc2-0-alpine

RUN apk add bash
RUN apk --no-cache add shadow
RUN usermod -aG admin root
# Copy nginx configuration files
COPY assets/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY assets/nginx.vh.default.conf /etc/nginx/conf.d/default.conf

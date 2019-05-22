FROM node:10.15.3-alpine

RUN	apk add bash
RUN apk add openssl

RUN	npm i -g pm2

COPY ./ /certbotjs/

RUN \
	cd /certbotjs ; \
	npm i

WORKDIR /certbotjs
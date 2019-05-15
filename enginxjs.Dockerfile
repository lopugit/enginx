FROM node:10.15.3-alpine

RUN	apk add bash
RUN apk add openssl

RUN	npm i -g pm2

COPY ./ /enginxjs/

RUN \
	cd /enginxjs ; \
	npm i

WORKDIR /enginxjs
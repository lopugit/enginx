FROM alpine:3.9

RUN	apk add bash

ENTRYPOINT ["tail", "-f", "/dev/null"]
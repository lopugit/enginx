FROM certbot/certbot

RUN apk add bash
COPY assets/autorenew.sh /autorenew.sh
RUN chmod +x /autorenew.sh

ENTRYPOINT ["tail", "-f", "/dev/null"]
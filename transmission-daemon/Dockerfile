FROM alpine:3.5

LABEL app="transmission-daemon"

RUN apk add --no-cache transmission-daemon

CMD ["/usr/bin/transmission-daemon", "-f"]

FROM alpine:3.17.0

COPY LICENSE README.md /

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

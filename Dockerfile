FROM alpine:3.10

LABEL version="1.0.0"
LABEL repository="https://github.com/sebastianpopp/ftp-action"
LABEL homepage="https://github.com/sebastianpopp/ftp-action"
LABEL maintainer="Sebastian Popp <ftp-action@sebastianpopp.com>"

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM alpine:3.22.0

RUN apk --no-cache add fetchmail=6.5.2-r0 ca-certificates=20241121-r2

VOLUME /var/lib/fetchmail
VOLUME /fetchmail

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER fetchmail
ENTRYPOINT ["/entrypoint.sh"]

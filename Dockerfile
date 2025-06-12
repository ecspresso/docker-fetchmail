FROM alpine:3.22.0

RUN apk --no-cache add fetchmail=6.5.2-r0 ca-certificates=20241121-r2

VOLUME /var/lib/fetchmail
VOLUME /fetchmail

RUN mkdir /etc/fetchmailrc.d
RUN chown fetchmail /etc/fetchmailrc.d/
RUN chmod 700 /etc/fetchmailrc.d/

COPY run.sh /run.sh
RUN chmod +x /run.sh

USER fetchmail
CMD ["/run.sh"]

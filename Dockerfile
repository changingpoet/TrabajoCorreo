FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y postfix dovecot-core dovecot-imapd dovecot-pop3d


EXPOSE 25 143 993


CMD ["sh", "-c", "service postfix start && service dovecot start && tail -f /dev/null"]

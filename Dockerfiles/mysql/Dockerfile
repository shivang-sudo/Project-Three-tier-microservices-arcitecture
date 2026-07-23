FROM mysql:5.7

VOLUME /data

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes \
    MYSQL_DATABASE=cities \
    MYSQL_USER=shipping \
    MYSQL_PASSWORD=secret

COPY config.sh /root/
RUN chmod +x /root/config.sh
RUN /root/config.sh

COPY scripts/ /docker-entrypoint-initdb.d/

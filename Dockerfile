FROM alpine:3.6
MAINTAINER mail@bluemaex.de

# install software
RUN	apk --update add --virtual .base_stuff \
    supervisor \
    nginx \
    make \
    ca-certificates && update-ca-certificates
RUN apk add --virtual .php_stuff \
    php7 \
    php7-apcu \
    php7-bz2 \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-fpm \
    php7-gd \
    php7-intl \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-openssl \
    php7-opcache \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-phar \
    php7-session \
    php7-simplexml \
    php7-sqlite3 \
    php7-tokenizer \
    php7-xml \
    php7-xmlwriter \
    php7-xmlreader \
    php7-zip \
    php7-zlib

# Clean up caches and default files
RUN rm -rf /var/cache/apk/* /tmp/* /etc/nginx/conf.d/* /var/www/*

# container data
COPY root /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 80 443
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["supervisor"]

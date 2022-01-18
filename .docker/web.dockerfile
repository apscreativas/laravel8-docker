FROM nginx:alpine

RUN apk --update add supervisor

# ensure www-data user exists
RUN set -x ; \
  addgroup -g 82 -S www-data ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

RUN rm /var/cache/apk/*

COPY /conf/nginx.conf /etc/nginx/nginx.conf
COPY /conf/supervisord-web.conf /etc/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
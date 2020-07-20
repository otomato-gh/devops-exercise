FROM alpine
LABEL MAINTAINER="Ant Weiss"
RUN apk add -U apache2 && mkdir -p /run/apache2
COPY index.html /var/www/localhost/htdocs/
EXPOSE 80 443
CMD ["/usr/sbin/httpd", "-D" ,"FOREGROUND"]

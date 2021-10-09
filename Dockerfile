FROM debian:11

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt -y install make gcc cpio nginx lowdown

RUN sed -ie 's|/var/www/html|/app/build/|' /etc/nginx/sites-available/default

RUN rm -f /var/log/nginx/access.log /var/log/nginx/error.log && \
    ln -s /dev/stdout /var/log/nginx/access.log && \
    ln -s /dev/stderr /var/log/nginx/error.log

WORKDIR /app

COPY . .

RUN chmod +x fleap-ssg

RUN make

STOPSIGNAL SIGTERM

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

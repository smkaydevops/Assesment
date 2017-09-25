FROM nginx:alpine
MAINTAINER vasun042@gmail.com
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/
COPY 1.html    /usr/share/nginx/html
COPY 2.html    /usr/share/nginx/html
COPY 3.html    /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx/ -D FOREGROUND

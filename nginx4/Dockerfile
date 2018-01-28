FROM ubuntu:16.04
LABEL maintainer="MFominov <maxfominov@gmail.com>"
RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install nginx
# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

HEALTHCHECK --interval=2m --timeout=5s \
  CMD curl -f http://localhost/ || exit 1

EXPOSE 80

COPY ./index.html  /var/www/html/index.html

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

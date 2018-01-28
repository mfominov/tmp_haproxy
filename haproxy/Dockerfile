FROM ubuntu:16.04
LABEL maintainer="MFominov <maxfominov@gmail.com>"
RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install haproxy

STOPSIGNAL SIGTERM

COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]


FROM ubuntu:14.04


RUN apt-get update -y && \ 
    apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev zlib1g-dev

COPY nginx-rtmp-module ./nginx-rtmp-module
COPY nginx-1.18.0 ./nginx-1.18.0

WORKDIR /nginx-1.18.0


RUN ./configure --with-http_ssl_module --with-file-aio --with-http_mp4_module --add-module=../nginx-rtmp-module && \
    make -j 1 && \
    make install

COPY nginx.conf /usr/local/nginx/conf

RUN /usr/local/nginx/sbin/nginx -t
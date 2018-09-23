FROM dreamlabs/php-composer:latest

RUN apt-get update && \
    apt-get install -y php7.2-curl && \
    wget https://scrutinizer-ci.com/ocular.phar -O /root/ocular && \
    chmod +x /root/ocular && \
    ln -s /root/ocular /usr/bin/ocular;

WORKDIR /app
ENTRYPOINT ["ocular"]
FROM dreamlabs/php-composer:latest

RUN wget https://scrutinizer-ci.com/ocular.phar -O /root/ocular && \
    chmod +x /root/ocular && \
    ln -s /root/ocular /usr/bin/ocular;

ENTRYPOINT ["ocular"]
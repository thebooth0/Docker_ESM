FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common wget unzip lsof perl netbase util-linux && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y \
        apache2 \
        php5 \
        php5-cli \
        php5-common \
        php5-json \
        php5-mysql \
        libapache2-mod-php5 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


EXPOSE 80


WORKDIR /var/www/html
COPY ./www /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]

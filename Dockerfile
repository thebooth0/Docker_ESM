FROM debian/eol:jessie

RUN echo 'deb http://archive.debian.org/debian/ jessie main contrib non-free' > /etc/apt/sources.list \
    && echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid-until \
    && apt-get update

RUN apt-get install -y apache2 php5 libapache2-mod-php5 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite
WORKDIR /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

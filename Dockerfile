FROM digirati/omeka-s:7.0.18-fpm

# Simple SAML
RUN apt-get install -y libmcrypt-dev && \
    docker-php-ext-install mcrypt && \
    git clone https://github.com/simplesamlphp/simplesamlphp.git /var/simplesamlphp && \
    cp -r /var/simplesamlphp/config-templates/* /var/simplesamlphp/config/ && \
    cp -r /var/simplesamlphp/metadata-templates/* /var/simplesamlphp/metadata/ && \
    apt-get install -y vim && \
    composer install -d /var/simplesamlphp --no-dev

# Twig
RUN composer require kokspflanze/zfc-twig:2.*

COPY ./config/application.config.php  /var/www/html/application/config/application.config.php

COPY ./config/php.ini /usr/local/etc/php/php.ini

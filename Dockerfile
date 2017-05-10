FROM digirati/omeka-s:7.0.18-fpm

RUN composer require kokspflanze/zfc-twig:2.*

COPY ./config/application.config.php  /var/www/application/config/application.config.php

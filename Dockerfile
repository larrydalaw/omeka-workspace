FROM digirati/omeka-s:7.0.18-fpm
RUN yes | pecl install xdebug

RUN composer require kokspflanze/zfc-twig:2.*
COPY ./config/application.config.php  /var/www/html/application/config/application.config.php
COPY ./config/php.ini /usr/local/etc/php/php.ini

# Find the containers gateway (host address) and assign it to xdebug.remote_host
RUN ip route show 0.0.0.0/0 | grep -Eo 'via \S+' | awk "{ print \"xdebug.remote_host=\" \$2 }" | \
	tee -a /usr/local/etc/php/php.ini

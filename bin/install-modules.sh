#!/bin/bash

docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/Elucidate && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/Kindred && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/ResourceProvider && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/IIIFView && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/IIIFImport && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/AnnotationStudio && composer install" 
docker exec omeka_fast_web /bin/sh -c "cd /var/www/html/modules/OAuth && composer install" 


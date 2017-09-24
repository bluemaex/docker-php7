# docker-php7-nginx

Simple Docker Image to build a container with nginx and php-fpm.

### Init Scripts
On container startup it runs every script that you put into ``/docker-init.d/`` - perfect for setting up the containing application.

### NGINX configuration
You can customize and add NGINX hosts by copying your files to ``/etc/nginx/conf.d``

### PHP configuration
You can customize and add PHP settings by copying your files to ``/etc/php7/conf.d``

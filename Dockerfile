FROM php:7.4-cli

RUN apt-get update && \
    apt-get install -y libzip-dev unzip && \
    docker-php-ext-install zip && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

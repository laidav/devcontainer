FROM mcr.microsoft.com/vscode/devcontainers/php:8.1-bullseye

ENV COMPOSER_MEMORY_LIMIT=-1
RUN apt-get update -y
RUN apt-get -y install libxml2-dev zlib1g-dev libpng-dev libzip-dev mariadb-client
RUN docker-php-ext-install bcmath gd soap zip pcntl pdo_mysql intl
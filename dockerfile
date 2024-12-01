

FROM php:7.4-apache

# Copier le code de l'application dans /var/www/html
COPY . /var/www/html/

# Installer les dépendances nécessaires et les extensions PHP
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd

# Copier le fichier de configuration Apache personnalisé
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Activer le module Apache pour PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Activer le module de réécriture d'URL (si nécessaire)
RUN a2enmod rewrite

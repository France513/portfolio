# FROM php:7.4-apache

# # Copier le contenu de ton application dans le répertoire /var/www/html
# COPY . /var/www/html/

# # Activer le module Apache pour PHP (si nécessaire)
# RUN docker-php-ext-install mysqli

FROM php:7.4-apache

# Copier le code de l'application dans /var/www/html
COPY . /var/www/html/

# Copier le fichier de configuration Apache personnalisé
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Activer le module Apache pour PHP
RUN docker-php-ext-install mysqli

# Activer le module de réécriture d'URL (si nécessaire)
RUN a2enmod rewrite

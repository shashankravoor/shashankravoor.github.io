FROM php:8.1-apache
WORKDIR /var/www/html
COPY contact.php /var/www/html/
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
EXPOSE 95
CMD ["apache2-foreground"]
# Use the official PHP image with Apache
FROM php:7.4-apache

# Copy the PHP file to the Apache web server directory
COPY vcc_app.php /var/www/html/

# Adjust ownership and permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 777 /var/www/html

# Add DirectoryIndex and Options to Apache config
RUN echo "\
<Directory /var/www/html>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride None\n\
    Require all granted\n\
</Directory>\n\
DirectoryIndex vcc_app.php index.html\n\
" > /etc/apache2/conf-available/custom-directory.conf && \
a2enconf custom-directory

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache when the container launches
CMD ["apache2-foreground"]

# Use the official PHP image with Apache
FROM php:8.2-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (if required for the PHP project)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html/

# Copy project files into the container
COPY . /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]

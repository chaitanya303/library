# Use an official PHP image as the base
FROM php:8.2-apache

# Install PHP extensions
RUN docker-php-ext-install mysqli

# Copy application code to the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]

FROM php:8.3.7-fpm-alpine

WORKDIR /var/www/html
COPY . .

# Install the Composer dependencies
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer install

# Install the PHP extensions we need
RUN docker-php-ext-install pdo_mysql bcmath

# Install nodejs and npm
RUN apk add --update nodejs npm
RUN npm install

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Expose port 8000
EXPOSE 8000

# Set the entrypoint script as the container entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

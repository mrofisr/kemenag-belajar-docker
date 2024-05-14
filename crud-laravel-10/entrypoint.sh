#!/bin/sh

# Run Laravel migrations, if needed
php artisan migrate --force

php artisan storage:link

# Start Laravel development server
php artisan serve --host=0.0.0.0 --port=8000

# Prevent the container from exiting
tail -f /dev/null

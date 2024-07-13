# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Set the environment variables for WordPress database connection
ENV WORDPRESS_DB_HOST=${dpg-cq8r77dds78s7394sarg-a}
ENV WORDPRESS_DB_NAME=${blog}
ENV WORDPRESS_DB_USER=${blog_0dyn_user}
ENV WORDPRESS_DB_PASSWORD=${bBTgJH8s03X0XsY5mdrQRelMLoZmZ44n}

# Copy wp-config.php to the container
COPY wp-config.php /var/www/html/

# Expose port 80 for the web server
EXPOSE 80

# Start WordPress
CMD ["apache2-foreground"]
FROM wordpress:latest

# Set the working directory to the WordPress root directory
WORKDIR /var/www/html/

# Install the WP-CLI tool
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Copy the add_post.sh script to the container
COPY add_post.sh /usr/local/bin/

# Make the add_post.sh script executable
RUN chmod +x /usr/local/bin/add_post.sh

# Set environment variables for WordPress site and authentication
ENV WORDPRESS_URL=http://localhost \
    WORDPRESS_TITLE="My WordPress Site" \
    WORDPRESS_ADMIN_USER=admin \
    WORDPRESS_ADMIN_PASSWORD=adminpassword \
    WORDPRESS_ADMIN_EMAIL=admin@example.com \
    WORDPRESS_DB_HOST=db \
    WORDPRESS_DB_NAME=wordpress \
    WORDPRESS_DB_USER=wordpressuser \
    WORDPRESS_DB_PASSWORD=wordpresspassword

# Start the cron service
CMD ["sh", "-c", "cron && tail -f /var/log/cron.log"]

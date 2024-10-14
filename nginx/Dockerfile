
# nginx/Dockerfile
FROM nginx:alpine

# Install apache2-utils for htpasswd
RUN apk add --no-cache apache2-utils

# Copy the nginx configuration and the script to generate htpasswd
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY generate_htpasswd.sh /usr/local/bin/generate_htpasswd.sh

# Make the script executable
RUN chmod +x /usr/local/bin/generate_htpasswd.sh

# Use the script to create htpasswd and then start nginx
CMD ["/bin/sh", "-c", "/usr/local/bin/generate_htpasswd.sh && nginx -g 'daemon off;'"]


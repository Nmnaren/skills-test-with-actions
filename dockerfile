# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom configuration file from the current directory
# to the NGINX configuration directory in the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files to the default NGINX public directory
COPY static-html-directory /usr/share/nginx/html

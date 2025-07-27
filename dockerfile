# Use a lightweight, production-ready web server image
FROM nginx:stable-alpine

# Remove the default NGINX HTML page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom website (index.html) into the container
COPY index.html /usr/share/nginx/html/

# If you later add images, CSS, or JS:
# COPY . /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]

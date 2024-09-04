# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the static website files to the Nginx HTML directory
COPY ./src/ /usr/share/nginx/html

# Expose port 80 to allow HTTP traffic
EXPOSE 80

# The default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
# Use the Nginx image from Docker Hub as a base image
FROM nginx:alpine

# Copy the static website files into the Nginx server
COPY css/ /usr/share/nginx/html/css/
COPY images/ /usr/share/nginx/html/images/
COPY js/ /usr/share/nginx/html/js/
COPY templates/ /usr/share/nginx/html/templates/
COPY templates/index.html /usr/share/nginx/html/


# Expose port 80 to the outside once the container has launched
EXPOSE 80

# Use the default Nginx start command
CMD ["nginx", "-g", "daemon off;"]
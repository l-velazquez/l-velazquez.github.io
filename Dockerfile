# Use a lightweight, stable version of Nginx as the base image
FROM nginx:stable-alpine

# This is the crucial step:
# Copy all your project files (HTML, CSS, images) into the directory
# where Nginx serves files from by default.
COPY . /usr/share/nginx/html

# Tell Docker that the container will listen on port 80
EXPOSE 80

# The base Nginx image is already configured to start the server
# automatically, so no CMD is needed.
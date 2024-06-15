# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy the application code into the container
# Assume the application code is in a directory named 'app'
COPY ./index.html /var/www/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start the Apache service
CMD ["apachectl", "-D", "FOREGROUND"]
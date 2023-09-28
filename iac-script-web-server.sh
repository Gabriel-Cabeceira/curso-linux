#!/bin/bash

# Update the server
echo "Updating server..."
apt-get update
apt-get upgrade -y

# Install Apache
echo "Installing Apache2..."
apt-get install apache2 -y

# Install Unzip
echo "Installing Unzip..."
apt-get install unzip -y

# Download an application
echo "Downloading a web application..."
wget -P /tmp https://github.com/Gabriel-Cabeceira/portfolio/archive/refs/heads/master.zip
unzip /tmp/master.zip

# Copy the application to apache default directory
echo "Deploying the application"
cp -R /home/cabeceira/Documentos/portfolio-master/* /var/www/html
rm -rf /home/cabeceira/Documentos/portfolio-master
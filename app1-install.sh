#! /bin/bash
# # Create a basic web server for demo
# sudo yum update -y
# sudo yum install -y httpd
# sudo sysctl enable httpd
# sudo service httpd start
# sudo echo '<h1>Welcome to my Demo Site - App1</h1>' sudo tee /var/html/index.html
# sudo mkdir /var/www/html/app1
# sudo echo '<!DOCTYPE html> <html> <body style=background-color:rgb(250,210,210);"> <h1>Welcome to my site </h1> <p> Terraform Demo </p> <p>Application Version: V1</p></body> | sudo tee /var/www/html/app1/index.html
# sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/metadata.html

# Update the system
sudo yum update -y

# Install Apache
sudo yum install -y httpd

# Enable and start Apache service
sudo systemctl enable httpd
sudo systemctl start httpd

# Create main index page
echo '<h1>Welcome to my Demo Site - App1</h1>' | sudo tee /var/www/html/index.html

# Create app1 directory
sudo mkdir -p /var/www/html/app1

# Create detailed app1 index page
echo '<!DOCTYPE html>
<html>
  <body style="background-color:rgb(250,210,210);">
    <h1>Welcome to my site</h1>
    <p>Terraform Demo</p>
    <p>Application Version: V1</p>
  </body>
</html>' | sudo tee /var/www/html/app1/index.html

# Fetch instance metadata and save to file
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/metadata.html

#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Deployed via Auto Scaling Group</h1>" > /var/www/html/index.html

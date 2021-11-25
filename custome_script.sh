#!/bin/bash
yum update -y
yum install httpd -y
service httpd start

echo "<html>" > /var/www/html/index.html
echo "<body>" >> /var/www/html/index.html 
echo "<img src=\"https://d1zpi2ttkhvd4x.cloudfront.net/11st.png\">" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html

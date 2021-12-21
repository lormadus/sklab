#!/bin/bash
yum update -y
yum install httpd -y
/bin/systemctl start httpd.service
echo "<html>" > /var/www/html/index.html
echo "<body>" >> /var/www/html/index.html
echo "<img src=\"https://user01-bucket-demo.s3.ap-northeast-2.amazonaws.com/dog.jpg\">" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html

#!/bin/sh
apt-get update
apt-get install -y apache2
service start apache2
chkonfig apache2 on
echo "<html><h1>Welcome to PixelDust Server</h2></html>" > /var/www/html/index.html
chmod 644 /var/www/html/index.html
systemctl enable apache2
systemctl start apache2

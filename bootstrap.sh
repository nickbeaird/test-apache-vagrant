#/usr/bin/env bash

# STEP 1: get your centOS running well
sudo yum install -y update
sudo yum install -y httpd
sudo yum install -y epel-release vim tmux htop

sudo systemctl enable httpd
sudo systemctl start httpd

# STEP 2: Install public website folders
sudo mkdir -p /var/www/example.com/public_html
sudo chown -R $USER:$USER /var/www/example.com/public_html
sudo chmod -R 755 /var/www
sudo cp /home/vagrant/index.html /var/www/example.com/public_html/index.html
cat /home/vagrant/vhost >> /etc/httpd/conf/httpd.conf


#echo "<html>" >> /var/www/example.com/public_html/index.html
#echo "  <head>" >> /var/www/example.com/public_html/index.html
#echo "    <title>Welcome to Example.com!</title>" >> /var/www/example.com/public_html/index.html
#echo "  </head>" >> /var/www/example.com/public_html/index.html
#echo "  <body>" >> /var/www/example.com/public_html/index.html
#echo "<h1>Success! The example.com virtual host is working!</h1>" >> /var/www/example.com/public_html/index.html
#echo "  </body>" >> /var/www/example.com/public_html/index.html
#echo "</html>" >> /var/www/example.com/public_html/index.html

#sudo mkdir /etc/httpd/sites-available
#sudo mkdir /etc/httpd/sites-enabled


# STEP 3: Setup apache config files





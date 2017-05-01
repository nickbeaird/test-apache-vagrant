#/usr/bin/env bash

# STEP 1: get your centOS running well
sudo yum install -y update
sudo yum install -y httpd
sudo yum install -y epel-release vim tmux htop

sudo systemctl enable httpd
sudo systemctl start httpd

# STEP 2: Install public website folder and information --> two sites = two folderss
sudo mkdir -p /var/www/example.com/public_html
sudo mkdir -p /var/www/example2.com/public_html
sudo chown -R $USER:$USER /var/www/example.com/public_html
sudo chown -R $USER:$USER /var/www/example2.com/public_html
sudo chmod -R 755 /var/www
sudo cp /home/vagrant/index.html /var/www/example.com/public_html/index.html
sudo cp /home/vagrant/index2.html /var/www/example2.com/public_html/index.html


#sudo mkdir /etc/httpd/sites-available
#sudo mkdir /etc/httpd/sites-enabled


# STEP 3: Setup apache config files
cat /home/vagrant/vhost >> /etc/httpd/conf/httpd.conf

# STEP 4: Restart the server
sudo systemctl restart httpd



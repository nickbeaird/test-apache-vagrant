
# Vagrant with Apache

## Installation
1. Vagrnat up
2. See your apache site!
  1. Go to IP listed in the Vagrant file listed under "private address"
  2. Go to your http://localhost/[port in Vagrant file]
  3. Mimic what a DNS would do and and the IP address from the Vagrant file to your /etc/hosts file. Then use that website name as your reference. 
NOTE: you can make multiple named websites in the /etc/hosts file and sort them in your apache .conf file. 

## File locations to know! 
1. Your local VM and Vagrant file
  * github test-centos-apache
  * your local machine
2. Your website files
  * located on the centOS VM --> vagrant ssh
  * /var/www/ and /var/www/html/ and /var/www/www.example.com/public
3. apache files
  * /etc/httpd/
4. apache configuration files
  * /etc/httpd/conf/httpd.conf


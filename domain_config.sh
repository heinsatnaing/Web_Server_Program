#!/bin/bash
#<VirtualHost 192.168.43.54:80>
#        ServerName www.example.com
#        ServerAlias example.com
#        DocumentRoot "/var/www/example.com/public_html"
#        ErrorLog "/var/www/example.com/logs/error.log"
#       TransferLog "/var/www/example.com/logs/access.log"
#</VirtualHost>

read -p "Add domain name u want :>>>" domain
read -p "Add your ipv4 address :>>>" ip 
cd /etc/httpd/conf.d/
touch ${domain}.conf
chown apache:apache ${domain}.conf
echo "<VirtualHost $ip:80>" >> ${domain}.conf
echo "        ServerName www.$domain" >>${domain}.conf
echo "        ServerAlias $domain" >>${domain}.conf
echo "        DocumentRoot "/var/www/$domain/public_html"" >>${domain}.conf
echo "        ErrorLog "/var/www/$domain/logs/error.log"" >>${domain}.conf
echo "       TransferLog "/var/www/$domain/logs/access.log"" >>${domain}.conf
echo "</VirtualHost>" >>${domain}.conf

cd /var/www/
mkdir $domain
cd $domain/
mkdir public_html logs
cd logs/
touch error.log access.log
restorecon -rv *

cd
cd /var/www/
chown apache:apache -R $domain
cd /home/heinsatzin/Documents/bashlab/web_server_program/

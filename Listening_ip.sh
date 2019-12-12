#!/bin/bash
cd
cd /etc/httpd/conf/
read -p "Add the listening ipv4 :>>" ipv4
Listen_ip=$(cat httpd.conf | grep Listen | tail -n 1 | awk '{print $2}')
sed -i 's/'$Listen_ip'/'${ipv4}:80'/g' /etc/httpd/conf/httpd.conf
systemctl restart httpd


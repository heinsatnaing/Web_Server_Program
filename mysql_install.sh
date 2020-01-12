#!/bin/bash
yum install @mysql -y --allowerasing

systemctl start mysqld
systemctl enable --now mysqld

echo "Mysql_secure_installation will be started"
sleep 1
mysql_secure_installation
echo "###########COMPLETED about mysql##########"

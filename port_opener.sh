#!/bin/bash
systemctl start httpd
systemctl enable httpd
systemctl restart httpd
firewall-cmd --permanent --add-port=80/tcp --zone=public
firewall-cmd --permanent --add-port=443/tcp --zone=public
firewall-cmd --reload
echo "Port 80 and 443 are opened!"

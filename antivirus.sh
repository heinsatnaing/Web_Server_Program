#!/bin/bash
#Clamav
yum install clamav -y
yum update clamav -y 2>/dev/null 1>/dev/null
clamscan -ir /var/www/$domain/ --copy/home/heinsatzin/Documents/bashlab/web_server_program/infected_virus.txt --remove=yes 2>/dev/null 2>/dev/null

#Rkhunter
yum install rkhunter -y
rkhunter --propupd


sed -i 's/propupd/check/g' antivirus.sh

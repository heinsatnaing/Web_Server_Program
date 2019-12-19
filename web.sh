#!/bin/bash
dir=$(pwd)
#Asking user to install or not.
echo "If you run this script, it will install httpd,mariadb,php,clamav,rootkit hunter,..."
read -p "Do u want to run?Y or N." x
if [ $x = "N" ] || [ $x = "*" ]; then
	echo "--------Program is stopped-----------"
	exit
else [ $x = "Y" ];
	echo "---------Program is starting----------"
fi

#installing php packages
source ./pkg_install.sh

#domain configure
source ./domain_config.sh

#port openning
source ./port_opener.sh

#mysql secure installation
source ./mysql_install.sh

#Listening ip
source ./Listening_ip.sh

#antivirus
source ./antivirus.sh

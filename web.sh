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
cd $dir
source ./pkg_install.sh

#domain configure
cd $dir
source ./domain_config.sh

#port openning
cd $dir
source ./port_opener.sh

#mysql secure installation
cd $dir
source ./mysql_install.sh

#Listening ip
cd $dir
source ./Listening_ip.sh

#antivirus
cd $dir
source ./antivirus.sh

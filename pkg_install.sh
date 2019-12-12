#!/bin/bash
install_php_pkg(){
	yum install $z -y
}


#Program
yum upgrade -y
yum install epel-release -y
yum install httpd mariadb vim -y
echo "Program installed php,php-mysql,php,php-gd,php-mbstring by default"
read -p "Do you want to install more php packages? Y or N :>>" x
if [ $x = "Y" ]  || [ $x = "Yes" ] || [ $x = "yes" ] || [ $x = "YES" ] || [ $x = "y" ];then	
	y="Y"
	while [ $y = "Y" ]
	do
		echo "copy pkg name and paste to install"
		yum list php-* | grep php | awk '{print $1}'
		read -p "Paste here   :>>" z
		install_php_pkg $z
		read -p "Wanna install more?  Y or N :>>" y
	done
else [ $x = "N" ] || [ $x = "No" ] || [ $x = "no" ] || [ $x = "n" ] || [ $x = "*" ]
	echo "PHP installation complete"
fi

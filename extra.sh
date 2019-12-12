#!/bin/bash
echo "Which process do u want to do?"
select process in "Php_Installation" "Adding Domain" "Mysql Login" "Virus detectin" "Changing listening ipv4 for web server" "To open port" "Exit"
do
	case $process in
		"Exit")
			exit
			;;
		"Php_Installation")
			source ./pkg_install.sh
			;;
		"Adding Domain")
			source ./domain_config.sh
			;;
		"Mysql Login")
			source ./mysql_install.sh
			;;
		"Virus detecting")
			source ./antivirus.sh
			;;
		"Changing listening ipv4 for web server")
			source ./Listening_ip.sh
			;;
		"To open port")
			source ./port.sh
	esac
done

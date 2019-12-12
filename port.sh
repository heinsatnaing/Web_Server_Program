#!/bin/bash
read -p "Which port do u want to open? eg. 80/tcp :>>" open_port
firewall-cmd --permanent --add-port=$open_port --zone=public
firewall-cmd --reload

#!/bin/bash
#Multiport Fallbacks By yanzwrt
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'

# Github Profile Repo
Git_Profile="https://raw.githubusercontent.com/yanzwrt/NginxFallbackMultiport/main"

echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
echo ""
sleep 1
cd /usr/bin
rm get-backres
rm backupmenu

wget -O get-backres "${Git_Profile}/OTHERS/get-backres.sh" && chmod +x /usr/bin/get-backres
wget -O backupmenu "${Git_Profile}/MENU/backupmenu.sh" && chmod +x /usr/bin/backupmenu
cd
cd /etc/nginx/conf.d
rm xray.conf
wget -O xray.conf "https://raw.githubusercontent.com/yanzwrt/NginxFallbackMultiport/main/OTHERS/xray.conf" && chmod +x xray.conf
cd
sleep 1
clear
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
sleep 1
echo -e "[${green}INFO${NC}] Please Restart All Services !"
sleep 2
clear
rm update.sh
# // script version check
serverV=$( curl -sS https://raw.githubusercontent.com/vinstechmy/NginxFallbackMultiport/main/UPDATE/version)
echo "$serverV" > /home/ver
echo ""
echo -e "[ ${green}INFO${NC} ] Successfully Up To Date!"
echo ""
read -n1 -r -p "Press any key to continue..." ; menu ;

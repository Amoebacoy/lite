#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# =========================================
# Getting
#
cd
# collor status
error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
# Cek Domain
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
    clear
    echo -e " ${error1}Gagal Install-Update.."
    sleep 2
    exit 0
else
    clear
    echo -e "${success}Installasi Update Menu..."
    sleep 2
fi
# ==========================================
cd
rm -r senmenu
wget -O senmenu "https://raw.githubusercontent.com/Amoebacoy/lite/main/senmenu.sh"
rm -rf senmenu

# hapus
cd 
rm -rf /usr/bin/menu
rm -rf /usr/bin/senmenu
rm -r /usr/bin/senmenu
rm -rf /usr/bin/add-akun
rm -rf /usr/bin/delete-akun
rm -rf /usr/bin/senmenu
rm -rf /usr/bin/add-akun
rm -rf /usr/bin/certv2ray
rm -rf /usr/bin/restart-xray
rm -rf /usr/bin/auto-pointing
rm -rf /usr/bin/cek-port
# update xray menu
rm -rf /usr/bin/certxray
rm -rf /usr/bin/chngedomain
rm -rf /usr/bin/xp
rm -rf /usr/bin/speedtest
rm -rf /usr/bin/running
rm -rf /usr/bin/autoreboot
# download
#
cd /usr/bin
# update by SL
wget -O menu "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/menu.sh"
wget -O add-akun "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/add-akun.sh"
wget -O senmenu "https://raw.githubusercontent.com/Amoebacoy/lite/main/senmenu.sh"
wget -O add-akun "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/add-akun.sh"
wget -O delete-akun "https://raw.githubusercontent.com/Amoebacoy/cv/main/senmenu/delv2ray.sh"
wget -O certv2ray "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/certv2ray.sh"
wget -O restart-xray "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/restart-xray.sh"
wget -O menu "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/menu.sh"
wget -O auto-pointing "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/auto-pointing.sh"
wget -O cek-port "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/cek-port.sh"
wget -O menu "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/menu.sh"
# update xray menu
wget -O chngedomain "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/chngedomain.sh"
wget -O certxray "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/certxray.sh"
wget -O xp "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/xp.sh"
wget -O speedtest "https://raw.githubusercontent.com/Amoebacoy/cv/main/senmenu/speedtes_cli.py"
wget -O autoreboot "https://raw.githubusercontent.com/Amoebacoy/newpro/main/autoreboot.sh"
wget -O running "https://raw.githubusercontent.com/Amoebacoy/lite/main/menu/running.sh"


#
chmod +x /usr/bin/senmenu
chmod +x /usr/bin/menu
chmod +x menu
chmod +x add-akun
chmod +x delete-akun
chmod +x senmenu
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port
# update xray menu
chmod +x certxray
chmod +x chngedomain
chmod +x xp
chmod +x speedtest
chmod +x running
chmod +x autoreboot

clear
echo -e "Update Selesai..."
rm -fr /root/senmenu.sh


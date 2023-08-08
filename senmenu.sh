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
# link hosting kalian
akbarvpn="https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu"
akbarvpnn="https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/updated"
akbarvpnnn="https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/updated"
cd
rm -r senmenu
wget -O updatedll "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/senmenu.sh"
rm -rf senmenu

# hapus
cd /usr/bin
rm -rf xmenu
rm -rf updatedll
rm -r updatedll
# download
#
cd /usr/bin
# update by SL
wget -O menu "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/xmenu.sh"
wget -O add-akun "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/add-akun.sh"
wget -O updatedll "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/updatedll.sh"
wget -O add-akun "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/add-akun.sh"
wget -O delete-akun "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/delete-akun.sh"
wget -O certv2ray "https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/xray/certv2ray.sh"
wget -O restart-xray "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/restart-xray.sh"
wget -O menu "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/xmenu.sh"
wget -O auto-pointing "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/auto-pointing.sh"
wget -O cek-port "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/cek-port.sh"
wget -O menu "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/xmenu.sh"
# update xray menu
wget -O adddomain "${akbarvpnnn}/adddomain.sh"
wget -O chngedomain "${akbarvpnnn}/chngedomain.sh"
wget -O certxray "${akbarvpnnn}/certxray.sh"
wget -O xp "${akbarvpnnn}/xp.sh"

#
chmod +x /usr/bin/updatedll
chmod +x /usr/bin/menu
chmod +x xmenu
chmod +x add-akun
chmod +x delete-akun
chmod +x updatedll
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port
# update xray menu
chmod +x certxray
chmod +x adddomain
chmod +x chngedomain
chmod +x xp

clear
echo -e "Update Selesai..."
cd

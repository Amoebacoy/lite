#!/bin/bash
BIBlack='\033[1;90m' 
Tes sih ini     # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/Zeastore/test/main"
export Server1_URL="raw.githubusercontent.com/Zeastore/limit/main"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther=".geovpn"

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // Exporting Network Interface
export NETWORK_IFACE="$(ip route show to default | awk '{print $5}')"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 3)}' | head -1)"
tmon="$(vnstat -m | grep `date +%G-%m` | awk '{print $8" "substr ($9, 1 ,3)}' | head -1)"
clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[39;1;92m                   ⇱ SERVER INFORMATION ⇲                      \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
if [ "$cekup" = "day" ]; then
echo -e "${BICyan} ⇲  ${BICyan}System Uptime   :  $uphours $upminutes $uptimecek"
else
echo -e "${BICyan} ⇲  ${BICyan}System Uptime   :  $uphours $upminutes"
fi
echo -e "${BICyan} ⇲  ${BICyan}Current Domain  :  ${BIYellow}$(cat /etc/xray/domain)${NC}"
echo -e "${BICyan} ⇲  ${BICyan}IP-VPS          :  $IPVPS${NC}"
echo -e "${BICyan} ⇲  ${BICyan}ISP-VPS         :  $ISPVPS${NC}"
echo -e "${CYAN}╔════════════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "${CYAN}║                         ⇱ XRAY Lite ⇲                         ║\033[0m${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝\033[0m${NC}"
echo -e "${CYAN}╔════════════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "     ${BICyan} NGINX ${NC}: ${GREEN}$resngx           ${LIGHT} Today  : $ttoday"
echo -e "     ${BICyan} XRAY  ${NC}: ${GREEN}$resv2r           ${LIGHT} Monthly: $tmon" 
echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝\033[0m${NC}"
echo -e "${CYAN}╔════════════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "${CYAN}║                        ⇱ XRAY XMENU ⇲                         ║\033[0m${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝\033[0m${NC}"
echo -e "${CYAN}║ 1. Buat Semua Akun XRAY   ┃ Create Account                     ║\033[0m${NC}"
echo -e "${CYAN}║ 2. Hapus Akun XRAY        ┃ Delete Account                     ║\033[0m${NC}"
echo -e "${CYAN}║ 5. Update DLL             ┃ Update ETC                         ║\033[0m${NC}"
echo -e "${CYAN}║ 6. XRAY UPDATE Core       ┃ Update Core                        ║\033[0m${NC}"
echo -e "${CYAN}║ 7. Autoreboot             ┃ autoreboot                         ║\033[0m${NC}"
echo -e "${CYAN}║ 8. Hidupkan Ulang Xray    ┃ Restart Service XRAY               ║\033[0m${NC}"
echo -e "${CYAN}║ 9. Perbarui Sertifikat    ┃ Update Certificate                 ║\033[0m${NC}"
echo -e "${CYAN}║ 10.Change Domain          ┃ CNG DOMAIN                         ║\033[0m${NC}"
echo -e "${CYAN}║ 11.Running                ┃                                    ║\033[0m${NC}"
echo -e "${CYAN}║ 12.Test Kecepatan Server  ┃ Speedtest Server                   ║\033[0m${NC}"
echo -e "${CYAN}║ 13.Hidupkan Ulang VPS     ┃ Reboot                             ║\033[0m${NC}"
echo -e "${CYAN}║ 14.Keluar Dari Menu       ┃ Exit Menu                          ║\033[0m${NC}"
echo -e "${CYAN}║ 15.Info Script            ┃                                    ║\033[0m${NC}"
echo -e "${CYAN}║ 16.Auto Pointing Subdomain┃                                    ║\033[0m${NC}"
echo -e "${CYAN}║ 17.Cek Semua Layanan Port ┃ Check All Port Service             ║\033[0m${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝\033[0m${NC}" 
read -p "     Select From Options [1-69 or x] :  " menu
case $menu in 
1)
add-akun
;;
2)
delete-akun
;;
3)
cat /etc/xray/domain
;;
4)
curl -s ipinfo.io/ip
;;
5)
senmenu
;;
6)
updatecore
;;
7)
autoreboot
;;
8)
restart-xray
;;
9)
certv2ray
;;
10)
chngedomain
;;
11)
running
;;
12)
speedtest
;;
13)
reboot
;;
14)
exit
;;
15)
cat /root/log-install.txt
;;
16)
auto-pointing
;;
17)
cek-port
;;
*)
echo -e "Input The Correct Number !"
;;
esac

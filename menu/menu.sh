#!/bin/bash
BIBlack='\033[1;90m'      # Black
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
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[39;1;92m                  ⇱ SERVER INFORMATION ⇲                  \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
if [ "$cekup" = "day" ]; then
echo -e "${BICyan} ⇲  ${BLUE}System Uptime   ${NC}:  ${YELLOW}$uphours $upminutes $uptimecek${NC}"
else
echo -e "${BICyan} ⇲  ${BLUE}System Uptime   ${NC}:  ${YELLOW}$uphours $upminutes${NC}"
fi
echo -e "${BICyan} ⇲  ${BLUE}Current Domain  ${NC}:  ${YELLOW}$(cat /etc/xray/domain)${NC}"
echo -e "${BICyan} ⇲  ${BLUE}IP-VPS          ${NC}:  ${YELLOW}$IPVPS${NC}"
echo -e "${BICyan} ⇲  ${BLUE}ISP-VPS         ${NC}:  ${YELLOW}$ISPVPS${NC}"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "\E[39;1;92m                        ⇱ XRAY Lite ⇲                    \E[0m"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝\033[0m${NC}"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "     ${LIGHT} NGINX ${NC}: ${GREEN}$resngx           ${LIGHT} Today  ${NC}: ${YELLOW}$ttoday${NC}"
echo -e "     ${LIGHT} XRAY  ${NC}: ${GREEN}$resv2r           ${LIGHT} Monthly${NC}: ${YELLOW}$tmon${NC}" 
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝\033[0m${NC}"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════╗\033[0m${NC}"
echo -e "\E[39;1;92m                        ⇱ XRAY MENU ⇲                     \E[0m"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╡\033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}01${BICyan}]${RED} •${NC} ${CYAN}Buat Semua Akun XRAY   ┃ ${LIGHT}Create Account             \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}02${BICyan}]${RED} •${NC} ${CYAN}Hapus Akun XRAY        ┃ ${LIGHT}Delete Account             \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}03${BICyan}]${RED} •${NC} ${CYAN}Update DLL             ┃ ${LIGHT}Update ETC                 \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}04${BICyan}]${RED} •${NC} ${CYAN}XRAY UPDATE Core       ┃ ${LIGHT}Update Core                \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}05${BICyan}]${RED} •${NC} ${CYAN}Autoreboot             ┃ ${LIGHT}autoreboot                 \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}06${BICyan}]${RED} •${NC} ${CYAN}Hidupkan Ulang Xray    ┃ ${LIGHT}Restart Service XRAY       \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}07${BICyan}]${RED} •${NC} ${CYAN}Perbarui Sertifikat    ┃ ${LIGHT}Update Certificate         \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}08${BICyan}]${RED} •${NC} ${CYAN}Change Domain          ┃ ${LIGHT}CNG DOMAIN                 \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}09${BICyan}]${RED} •${NC} ${CYAN}Running                ┃ ${LIGHT}                           \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}10${BICyan}]${RED} •${NC} ${CYAN}Test Kecepatan Server  ┃ ${LIGHT}Speedtest Server           \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}11${BICyan}]${RED} •${NC} ${CYAN}Hidupkan Ulang VPS     ┃ ${LIGHT}Reboot                     \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}12${BICyan}]${RED} •${NC} ${CYAN}Info Script            ┃ ${LIGHT}                           \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}13${BICyan}]${RED} •${NC} ${CYAN}Auto Pointing Subdomain┃ ${LIGHT}                           \033[0m${NC}"
echo -e "${CYAN}║ ${BICyan}[${BIWhite}14${BICyan}]${RED} •${NC} ${CYAN}Cek Semua Layanan Port ┃ ${LIGHT}Check All Port Service     \033[0m${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝\033[0m${NC}" 
echo -e ""
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
add-akun
;;
2)
delete-akun
;;
3)
senmenu
;;
4)
updatecore
;;
5)
autoreboot
;;
6)
restart-xray
;;
7)
certv2ray
;;
8)
chngedomain
;;
9)
running
;;
10)
speedtest
;;
11)
reboot
;;
12)
cat /root/log-install.txt
;;
13)
auto-pointing
;;
14)
cek-port
;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac

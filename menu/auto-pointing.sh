#!/bin/bash
# // String / Request Data
# Getting
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGREEN='\033[1;92m'      # GREEN
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICdyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGREEN='\033[0;92m'       # GREEN
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
MYIP=$(wget -qO- ipinfo.io/ip);
clear
apt install update && apt upgrade -y
apt install jq curl -y
#sub=$(</dev/urandom tr -dc a-z | head -c4)
rm -f /root/domain
rm -f /etc/v2ray/domain
rm -f /etc/xray/domain
rm -rf /etc/xray/domain
rm -rf /root/nsdomain
rm -rf /var/lib/crot/ipvps.conf
rm nsdomain
rm domain
mkdir -p /usr/bin/xray
mkdir -p /usr/bin/v2ray
mkdir -p /etc/xray
mkdir -p /etc/v2ray
echo "$SUB_DOMAIN" >> /etc/v2ray/domain
clear
echo -e ""
echo -e "jangan karakter singkat seperti: sg, id, hk,"
echo -e "kalau bisa 1 kata yang unik dengan dikombinasikan dengan angka"
echo -e "contoh: resa11"
echo -e ""
echo -e "\e[32msubdomain\e[0m.fabumi.my.id"
read -p "Mau subdomain apa?( 1kata ) : " sub
if [[ $sub == "" ]]; then
clear
echo -e "${EROR} No Input Detected !"
exit 1
fi
DOMAIN=fabumi.my.id
SUB_DOMAIN=${sub}.fabumi.my.id
NS_DOMAIN=dns.${SUB_DOMAIN}
CF_ID=Amoeba.coy@gmail.com
CF_KEY=28ca95c3378e1bb7cc64173b3435a13adac34
set -euo pipefail
IP=$(wget -qO- ipinfo.io/ip)
echo -e "[ ${GREEN}INFO${NC} ] Updating DNS NS for ${NS_DOMAIN}... "
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
    		-H "X-Auth-Email: ${CF_ID}" \
   		-H "X-Auth-Key: ${CF_KEY}" \
     		-H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${NS_DOMAIN}" \
		-H "X-Auth-Email: ${CF_ID}" \
		-H "X-Auth-Key: ${CF_KEY}" \
		-H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
	RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
			-H "X-Auth-Email: ${CF_ID}" \
			-H "X-Auth-Key: ${CF_KEY}" \
			-H "Content-Type: application/json" \
			--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${SUB_DOMAIN}'","proxied":false}' | jq -r .result.id)
	fi

	RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
		-H "X-Auth-Email: ${CF_ID}" \
		-H "X-Auth-Key: ${CF_KEY}" \
		-H "Content-Type: application/json" \
		--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${SUB_DOMAIN}'","proxied":false}')

echo -e "[ ${GREEN}INFO${NC} ] Updating SUBDOMAIN for ${SUB_DOMAIN}... "
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","proxied":false}')
rm -rf /etc/xray/domain
rm -rf /root/nsdomain
echo "IP=""$SUB_DOMAIN" >> /var/lib/crot/ipvps.conf
echo "Host : $SUB_DOMAIN"
echo "Host : $NS_DOMAIN"
echo $SUB_DOMAIN > /root/domain
echo "Host SlowDNS : $NS_DOMAIN"
echo "$NS_DOMAIN" >> /root/nsdomain
echo "$SUB_DOMAIN" >> /etc/xray/domain
sleep 1
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
yellow "Domain added.."
sleep 3
clear
rm -fr /root/auto.sh
cd

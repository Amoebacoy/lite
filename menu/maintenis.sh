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
clear
echo -e ""
echo -e "         ,8.       ,8.                   .8.           8 8888 b.             8 8888888 8888888888 8 8888888888   b.             8          .8.          b.             8     ,o888888o.    8 8888888888   "
echo -e "       ,888.     ,888.                 .888.          8 8888 888o.          8       8 8888       8 8888         888o.          8         .888.         888o.          8    8888     `88.  8 8888          "
echo -e "       .`8888.   .`8888.               :88888.         8 8888 Y88888o.       8       8 8888       8 8888         Y88888o.       8        :88888.        Y88888o.       8 ,8 8888       `8. 8 8888         "
echo -e "      ,8.`8888. ,8.`8888.             . `88888.        8 8888 .`Y888888o.    8       8 8888       8 8888         .`Y888888o.    8       . `88888.       .`Y888888o.    8 88 8888           8 8888         "
echo -e "     ,8'8.`8888,8^8.`8888.           .8. `88888.       8 8888 8o. `Y888888o. 8       8 8888       8 888888888888 8o. `Y888888o. 8      .8. `88888.      8o. `Y888888o. 8 88 8888           8 888888888888 "
echo -e "    ,8' `8.`8888' `8.`8888.         .8`8. `88888.      8 8888 8`Y8o. `Y88888o8       8 8888       8 8888         8`Y8o. `Y88888o8     .8`8. `88888.     8`Y8o. `Y88888o8 88 8888           8 8888         "
echo -e "   ,8'   `8.`88'   `8.`8888.       .8' `8. `88888.     8 8888 8   `Y8o. `Y8888       8 8888       8 8888         8   `Y8o. `Y8888    .8' `8. `88888.    8   `Y8o. `Y8888 88 8888           8 8888         "
echo -e "  ,8'     `8.`'     `8.`8888.     .8'   `8. `88888.    8 8888 8      `Y8o. `Y8       8 8888       8 8888         8      `Y8o. `Y8   .8'   `8. `88888.   8      `Y8o. `Y8 `8 8888       .8' 8 8888         "
echo -e " ,8'       `8        `8.`8888.   .888888888. `88888.   8 8888 8         `Y8o.`       8 8888       8 8888         8         `Y8o.`  .888888888. `88888.  8         `Y8o.`    8888     ,88'  8 8888         "
echo -e ",8'         `         `8.`8888. .8'       `8. `88888.  8 8888 8            `Yo       8 8888       8 888888888888 8            `Yo .8'       `8. `88888. 8            `Yo     `8888888P'    8 888888888888 "
echo -e ""

#!/bin/bash
clear
echo "######################################"
echo "#                                    #"
echo "#  A update script for new Linux OS  #"
echo "#           https://pa.ci            #"
echo "#      Only for Debian8 64bits       #"
echo "#                                    #"
echo "######################################"
echo ""
read  -n 1 -p "Do you want to update it? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e ""
    apt-get update -y
    apt-get install vim -y
    apt-get install wget -y
    apt-get install curl -y
    apt-get install zip unzip -y
    apt-get install python -y
    apt-get install python3 -y
    apt-get install traceroute -y
    apt-get install net-tools -y
    apt-get install cron -y
    apt-get install git
    apt-get upgrade -y
    echo -e ""
    echo -e "Update finished"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
read  -n 1 -p "Do you want to install server speeder? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    wget --no-check-certificate -O appex.sh https://raw.githubusercontent.com/0oVicero0/serverSpeeder_Install/master/appex.sh && chmod +x appex.sh && bash appex.sh install
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
read  -n 1 -p "Do you want to install shadowsocks? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh && chmod +x shadowsocks-all.sh && ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
read  -n 1 -p "Do you want to reboot it? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    reboot
else [[ $REPLY =~ ^[Nn]$ ]]
then
  echo -e ""
fi

#!/bin/bash
clear
echo "######################################"
echo "#                                    #"
echo "#  A update script for new Linux OS  #"
echo "#           https://pa.ci            #"
echo "#    For CentOS/RedHat OpenVZ VPS    #"
echo "#                                    #"
echo "######################################"
echo ""
read  -n 1 -p "Do you want to update it? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e ""
    yum update -y
    yum install vim -y
    yum install wget -y
    yum install curl -y
    yum install zip unzip -y
    yum install python -y
    yum install traceroute -y
    yum install net-tools -y
    yum install crontabs -y
    echo -e ""
    echo -e "Update finished"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
read  -n 1 -p "Do you want to install BBR? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    wget --no-check-certificate -O bbr.sh https://github.com/91yun/uml/raw/master/lkl/install.sh && chmod +x bbr.sh && bash bbr.sh
    echo -e ""
    echo -e "BBR installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
read  -n 1 -p "Do you want to install shadowsocks? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh && chmod +x shadowsocks-all.sh && ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
    echo -e ""
    echo -e "Shadowsocks installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
echo -e ""
echo "The system will reboot in 10 seconds."
echo "To stop the reboot, press the CTRL+C key to cancel it."
sleep 7
echo "The system will reboot in 3 seconds."
sleep 3
echo "The system is rebooting."
reboot

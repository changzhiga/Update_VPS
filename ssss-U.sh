#!/bin/bash
#URL: https://github.com/uselibrary/Update_VPS
#E-mail: mail@uselib.com
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #            Install SSSS ON Linux OS          #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.2                  #"
echo "    ################################################"
#Update the Linux OS
echo ""
read -p "Do you want to update it? [Y/n] " update
if [[ ${update} == "y" || ${update} == "Y" ]]; then
  if cat /etc/*-release | grep -Eqi "centos|red hat|redhat"; then
    yum -y update
  elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
    apt-get -y update
  else
    echo "This release is not supported."
  fi
fi
sync
echo 1 > /proc/sys/vm/drop_caches
#Install sercerspeed
echo ""
read -p "Do you want to install server speeder? [Y/n] " serverspeeder
if [[ ${serverspeeder} == "y" || ${serverspeeder} == "Y" ]]; then
    wget --no-check-certificate -O appex.sh https://raw.githubusercontent.com/0oVicero0/serverSpeeder_Install/master/appex.sh && chmod +x appex.sh && bash appex.sh install
    echo -e ""
    echo -e "Serverspeeder installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
#Install BBR
echo -e ""
read -p "Do you want to install BBR? [Y/n] " bbr
if [[ ${bbr} == "y" || ${bbr} == "Y" ]]; then
    wget --no-check-certificate -O bbr.sh https://github.com/91yun/uml/raw/master/lkl/install.sh && chmod +x bbr.sh && bash bbr.sh
    echo -e ""
    echo -e "BBR installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
#Install shadowsocks
echo -e ""
read -p "Do you want to install shadowsocks? [Y/n] " shadowsocks
if [[ ${shadowsocks} == "y" || ${shadowsocks} == "Y" ]]; then
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh && chmod +x shadowsocks-all.sh && ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
    echo -e ""
    echo -e "Shadowsocks installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
#Install shadowsocksR
echo -e ""
read -p "Do you want to install shadowsocksR? [Y/n] " shadowsocksR
if [[ ${shadowsocksR} == "y" || ${shadowsocksR} == "Y" ]]; then
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh && chmod +x shadowsocksR.sh && ./shadowsocksR.sh 2>&1 | tee shadowsocksR.log
    echo -e ""
    echo -e "ShadowsocksR installed"
fi
sync
echo 1 > /proc/sys/vm/drop_caches
#Reboot the system
echo ""
seconds_left=10
echo -e "The system will reboot in ${seconds_left} seconds.\nTo stop the reboot, press the CTRL+C key to cancel it."
while [ $seconds_left -gt 0 ];do
  echo -n $seconds_left
  sleep 1
  seconds_left=$(($seconds_left - 1))
  echo -ne "\r     \r"
done
echo "The system is rebooting."
sleep 1
reboot

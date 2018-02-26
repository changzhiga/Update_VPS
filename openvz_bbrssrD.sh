#!/bin/bash
#URL: https://github.com/uselibrary/Update_VPS
#E-mail: emkqson@gmail.com
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #       Install BBRSSR on Debain-based OS      #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.4                  #"
echo "    ################################################"
#Prepare the installation environment
echo -e ""
echo -e "Prepare the installation environment."
  apt-get -y update
  if dpkg -l | grep -Eqi "unzip";then
    echo "unzip installed"
  else
    echo "unzip installing"
    apt-get -y install unzip
  fi
  if dpkg -l | grep -Eqi "virt-what";then
    echo "virt-what installed"
  else
    echo "virt-what installing"
    apt-get -y install virt-what
  fi
  if dpkg -l | grep -Eqi "net-tools";then
    echo "net-tools installed"
  else
    echo "net-tools installing"
    apt-get -y install net-tools
  fi
#Install OpenVZ-BBR
if [ "$vir" -eq 1 ]; then
  echo -e ""
  read -p "Do you want to install OpenVZ-BBR? [Y/n] " openvzbbr
  if [[ ${openvzbbr} == "y" || ${openvzbbr} == "Y" ]]; then
      wget --no-check-certificate -O bbr.sh https://github.com/91yun/uml/raw/master/lkl/install.sh && chmod +x bbr.sh && bash bbr.sh
      echo -e ""
      echo -e "OpenVZ-BBR installed"
  fi
fi
#Install shadowsocksR
echo -e ""
read -p "Do you want to install shadowsocksR? [Y/n] " shadowsocksR
if [[ ${shadowsocksR} == "y" || ${shadowsocksR} == "Y" ]]; then
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh && chmod +x shadowsocksR.sh && ./shadowsocksR.sh 2>&1 | tee shadowsocksR.log
    echo -e ""
    echo -e "ShadowsocksR installed"
fi
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

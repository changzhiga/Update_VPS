#!/bin/bash
clear
echo "######################################"
echo "#                                    #"
echo "#  A update script for new Linux OS  #"
echo "#           https://pa.ci            #"
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
    apt-get upgrade -y
    echo -e ""
    echo -e "Update finished"
fi
clear
sync
echo 1 > /proc/sys/vm/drop_caches
read  -n 1 -p "Do you want to reboot it? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    reboot
elif [[ $REPLY =~ ^[Nn]$ ]]
then
  echo -e ""
fi

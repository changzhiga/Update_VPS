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
echo ""
read  -n 1 -p "Do you want to reboot it? [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    reboot
fi
echo -e ""
clear

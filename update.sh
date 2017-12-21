#!/bin/bash
clear
echo "######################################"
echo "#                                    #"
echo "#  A update script for new Linux OS  #"
echo "#           https://pa.ci            #"
echo "#                                    #"
echo "######################################"
echo ""
echo -e "Are you want to update and install some softwares? "
echo -e ""
read  -n 1 -p "Y or N "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e ""
    apt-get update -y
    apt-get install vim -y
    apt-get install curl -y
    apt-get install python -y
    apt-get install python3 -y
    apt-get upgrade -y
    echo -e ""
    echo -e "Update finished"
fi
echo ""
echo -e "Are you want to reboot it? "
echo -e ""
read  -n 1 -p "Y or N "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    reboot
fi
echo -e ""
clear

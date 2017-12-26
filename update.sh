#!/bin/bash

clear
echo "  ######################################"
echo "  #                                    #"
echo "  #  A update script for new Linux OS  #"
echo "  #           https://pa.ci            #"
echo "  #                                    #"
echo "  ######################################"
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

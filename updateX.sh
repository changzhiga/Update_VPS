#!/bin/bash
clear
echo "######################################"
echo "#                                    #"
echo "#  A update script for new Linux OS  #"
echo "#           https://pa.ci            #"
echo "#                                    #"
echo "######################################"
echo ""
if cat /etc/issue | grep -Eqi "debain|ubuntu"; then
      read  -n 1 -p "Do you want to update it? [Y/n] "
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
          echo -e ""
          apt-get update -y
          apt-get install vim -y
          apt-get install wget -y
          apt-get install curl -y
          apt-get install python -y
          apt-get install python3 -y
          apt-get install traceroute -y
          apt-get install net-tools -y
          apt-get install cron -y
          apt-get upgrade -y
          echo -e ""
          echo -e "Update finished"
      fi
      echo ""
      read  -n 1 -p "Do you want to reboot it? [Y/n] "
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
          reboot
      fi
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
      read  -n 1 -p "Do you want to update it? [Y/n] "
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
          echo -e ""
          yum update -y
          yum install vim -y
          yum install wget -y
          yum install curl -y
          yum install yum-utils -y
          yum install python -y
          yum install python3 -y
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
fi
echo -e ""
clear

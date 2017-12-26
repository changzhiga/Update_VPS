#!/bin/bash
#URL: https://github.com/uselibrary/Update_VPS
#E-mail: mail@uselib.com
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #        Update script for new Linux OS        #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.2                  #"
echo "    ################################################"
#Update the Linux OS
echo ""
read -p "Do you want to update it? [Y/n] " update
if [[ ${update} == "y" || ${update} == "Y" ]]; then
  if cat /etc/*-release | grep -Eqi "centos|red hat|redhat"; then
    yum -y update
    yum -y install vim wget curl net-tools
    yum -y upgrade
  elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
    apt-get -y update
    apt-get -y install vim wget curl net-tools
    apt-get -y upgrade
  else
    echo "This release is not supported."
  fi
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

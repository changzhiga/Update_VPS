#!/bin/bash
#URL: https://github.com/uselibrary/Update_VPS
#E-mail: emkqson@gmail.com
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #           Update script for Linux OS         #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.4                  #"
echo "    ################################################"
#Prepare the Update environment
echo -e ""
echo -e "Prepare the installation environment."
if cat /etc/*-release | grep -Eqi "centos|red hat|redhat"; then
  echo "RPM-based"
  yum -y update
  if rpm -qa | grep -Eqi "unzip";then
    echo "unzip installed"
  else
    echo "unzip installing"
    yum -y install unzip
  fi
  if rpm -qa | grep -Eqi "virt-what";then
    echo "virt-what installed"
  else
    echo "virt-what installing"
    yum -y install virt-what
  fi
  if rpm -qa | grep -Eqi "net-tools";then
    echo "net-tools installed"
  else
    echo "net-tools installing"
    yum -y install net-tools
  fi
elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
  echo "Debian-based"
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
else
  echo "This release is not supported."
  exit
fi
#Check the virtualization
echo "Check the virtualization."
if virt-what | grep -Eqi "openvz"; then
  vir=1
else
  vir=2
fi
# drop caches
if [ "$vir" -eq 2 ]; then
  echo 1 > /proc/sys/vm/drop_caches
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

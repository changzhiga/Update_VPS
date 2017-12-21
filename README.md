# Update VPS
This is a simple shell script for a new VPS to update and install some softwares automaticly.</br>
The script for Debian/Ubuntu('update.sh') works well while the script for CentOS/Redhat('updateC.sh') has not been tested.</br>
It will work better if you personalize configuration on it.</br>
### For Debian/Ubuntu:
```
wget --no-check-certificate -O update.sh https://raw.githubusercontent.com/uselibrary/Update_VPS/master/update.sh && chmod +x update.sh && bash update.sh
```
### For CentOS/Redhat:
```
wget --no-check-certificate -O updateC.sh https://raw.githubusercontent.com/uselibrary/Update_VPS/master/updateC.sh && chmod +x updateC.sh && bash updateC.sh
```
<br>
# VPS开荒脚本
此脚本主要是用来开荒新安装系统的VPS，包括一些常用软件的安装和系统更新。</br>
适用于Debian/Ubuntu的脚本'update.sh'已经经过测试，可以正常使用；适用于CentOS/Redhat的脚本'updateC.sh'尚未测试，但是理论上应该也可以正常使用。</br>
如果你经常使用到此脚本，强烈建议你对其进行个性化配置以发挥最大的效用。</br>
### 对于Debian/Ubuntu系统:
```
wget --no-check-certificate -O update.sh https://raw.githubusercontent.com/uselibrary/Update_VPS/master/update.sh && chmod +x update.sh && bash update.sh
```
### 对于CentOS/Redhat系统:
```
wget --no-check-certificate -O updateC.sh https://raw.githubusercontent.com/uselibrary/Update_VPS/master/updateC.sh && chmod +x updateC.sh && bash updateC.sh
```

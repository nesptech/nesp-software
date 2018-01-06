#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
echo '\033[33m================安装 deb软件包====================\033[32m'
echo ''
cd ubuntu-16.04-deb
file=`ls`
for f in $file; do
files="$f"
if [ "${files##*.}" = "gz" ];then
    echo "\033[34m===========正在解压 ${files%.*}.......=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #TAR FILES
    sudo tar -xf $files -C ./; 
elif [ "${files##*.}" = "deb" ];then
    echo "\033[34m===========正在安装 ${files%.*}=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #INSTALL DEBS
    sudo apt-get -f install -y
    sudo apt-get install -y $files;  
    sudo apt-get -f install -y	
    sudo apt-get install -y $files;
fi
done

#CRACK CROSSOVER
sudo cp -f Crack/winewrapper.exe.so /opt/cxoffice/lib/wine
sudo apt install -y debhelper

#INSTALL PLAYONLINUX
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update
sudo apt-get install playonlinux

sudo apt autoremove

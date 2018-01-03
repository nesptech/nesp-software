#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
echo '\033[33m================安装 deb软件包====================\033[32m'
echo ''
cd ubuntu-deb
file=`ls`
for f in $file; do
files="$f"
if [ "${files##*.}" = "gz" ];then
    echo "\033[34m===========正在解压 ${files%.*}.......=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #do some thing here
    sudo tar -xf $files -C ./; 
elif [ "${files##*.}" = "deb" ];then
    echo "\033[34m===========正在安装 ${files%.*}=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #INSTALL DEBS
    sudo apt-get -f install -y
    sudo apt-get install -y $files;  
    sudo apt-get -f install -y	
    sudo apt-get install -y $files;
    #CRACK CROSSOVER
    sudo cp -f Crack/winewrapper.exe.so /opt/cxoffice/lib/wine
    sudo apt install -y debhelper
fi
done
sudo apt autoremove

#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m==============正在安装 Gmip、Wine Mega、add-apt-repository、atom==============\033[32m'
sudo apt-get install -y gimp
sudo apt-get install -y wine
sudo apt-get install -y megasync
sudo apt-get install -y software-properties-common
sudo apt-get install -y atom
echo '\033[33m====================完成======================\033[32m'
echo ""
echo ""
echo '\033[33m==============正在卸载 Steam==============\033[32m'
sudo apt-get remove -y steam
echo '\033[33m====================完成======================\033[32m'
echo ""
echo ""

#INSTALL DEB PACKAGES FOR DEEPIN
cd ..
cd ..
sh package/install_deb_deepin.sh

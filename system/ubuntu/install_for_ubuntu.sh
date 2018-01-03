#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m===============卸载亚马逊链接==========\033[32m'
sudo apt-get remove --purge unity-webapps-common
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m==============正在安装 Chrome==============\033[32m'
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m==============正在安装 Gmip、android-file-transfer==============\033[32m'
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install -y gimp 
sudo add-apt-repository ppa:samoilov-lex/aftl-stable 
sudo apt-get update 
sudo apt install -y android-file-transfer
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m==============正在安装 MEGA、Wine&SSR==============\033[32m'
sh install_mega.sh
sh install_ssrgui.sh
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m======正在安装gdbi (sudo gdebi xxx.ded)、synaptic ======\033[32m'
sudo apt-get installb -y gdebi
sudo apt-get install -y synaptic 
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m=======正在安装 unity tweak tool &theme========\033[32m'
sudo apt-get install -y unity-tweak-tool
sudo add-apt-repository ppa:noobslab/themes  
sudo apt-get update  
sudo apt-get install -y flatabulous-theme
sudo add-apt-repository ppa:noobslab/icons  
sudo apt-get update  
sudo apt-get install -y ultra-flat-icons
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
echo '\033[33m=================卸载 firefox 安装 kchmviewe rar wine=================\033[32m'
sudo apt-get purge firefox 
sudo apt-get install -y kchmviewe
sudo apt-get install -y rar
sudo apt-get install -y wine
echo '\033[33m====================完成======================\033[32m'
echo ''
echo ''
#echo '\033[33m=================正在安装 MAC 主题====================\033[32m'
sudo sh mactheme.sh
echo '\033[33m=================卸载游戏=========================\033[32m'
sudo apt-get remove quadrapassel Mahjongg sudoku aisleriot gbrainy mins
echo '\033[33m====================完成======================\033[32m'

#INSTALL DEB PACKAGES FOR UBUNTU
cd ..
cd ..
sh package/install_deb_ubuntu.sh

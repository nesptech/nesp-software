#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo "\033[33m============== 正在安装  curl、adb、fastboot.... =============\033[32m"
sudo apt-get install -y curl adb fastboot
echo "\033[33m====================完成======================\033[32m"
echo ""
echo ""
echo "\033[33m============== 正在安装并配置 git\git-lfs=============\033[32m"
sudo apt-get install -y git
read -p "请输入要配置的git用户名:" gituser
read -p  "请输入要配置的git邮箱:"  gitemail
git config --global user.name "$gituser"
git config --global user.email "$gitemail"
git config --global credential.helper store
read -p  "请输入要配置ssh的邮箱:"  sshemail
ssh-keygen -t rsa -C "$sshemail" 
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt install git-lfs
git lfs install
echo "\033[33m====================完成======================\033[32m"
echo ""
echo ""
echo "\033[33m============== 正在安装  32位库.... =============\033[32m"
sudo dpkg --add-architecture i386
sudo apt-get update  
sudo apt-get upgrade 
sudo apt autoremove
echo "\033[33m====================完成======================\033[32m"
echo ""
echo ""


#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo "\033[33m============== 正在安装  curl、adb、fastboot.... =============\033[32m"
sudo apt-get install -y curl adb fastboot
echo "\033[33m====================完成======================\033[32m"
echo ""
echo ""
echo "\033[33m============== 正在安装并配置 git\git-lfs\git-up=============\033[32m"
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
cd ..
sudo cp ./build/git_upload.sh /usr/bin/git-up
sudo chmod a+x /usr/bin/git-up
cd $LOCAL_PATH
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
echo "\033[33m============== 正在安装 Lantern开发环境.... =============\033[32m"
sudo apt install -y npm libappindicator3-dev libgtk-3-dev libappindicator3-1  libc6-dev-i386 golang
cat ./files/go/profile >> ~/.profile
. ~/.profile
sudo npm i gulp -g
read -p "你的操作系统是Ubuntu吗?[y/n]   " mysystem
if [ "$mysystem" = "y" ];then	
     sudo link /usr/bin/nodejs /usr/bin/node
fi
echo "\033[33m====================完成======================\033[32m"
echo ""
echo ""

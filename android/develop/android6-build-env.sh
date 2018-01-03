#!/bin/bash
echo '\033[33m===============安装 Android 开发环境(Android-6.0)============\033[32m'
echo ''
#安装 JDK
#sudo apt-get update
#sudo apt-get install -y openjdk-7-jdk openjdk-7-jre
# 安装所需的程序包 (Ubuntu 14.04)
#64 位版本的 Ubuntu。建议您使用 Ubuntu 14.04
sudo apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev libncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip libesd0-dev lzop libsdl1.2-dev pngcrush  schedtool squashfs-tools repo
#sudo apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip
echo ''
echo 'Change Make version to v3.82'
echo ''
tar -zxf ./files/make-3.82.tar.gz
cd ./make-3.8.2
./configure
make
sudo make install
sudo cp -rf /usr/local/bin /usr/bin
sudo rm -rf /usr/local/bin
rm -rf ./make-3.8.2
echo ''
echo 'Change JDK version to v7'
echo ''
read -p "你的操作系统是：[Deepin/Ubuntu]" mysystem
if [ "$mysystem" = "Deepin" ];then
	sudo cp /ect/apt/sources.list /ect/apt/sources.list.bak
	sudo echo "deb http://security.debian.org/debian-security wheezy/updates main" >> /ect/apt/sources.list
	sudo apt update
	sudo apt remove -y openjdk-8-jre
	sudo apt autoremove -y
	sudo apt install -y openjdk-7-jre 
elif [ "$mysystem" = "Ubuntu" ];then
sudo apt update
sudo apt remove -y openjdk-8-jre
sudo apt autoremove -y
sudo apt install -y openjdk-7-jre 
fi
echo ''
echo 'Change Python version to v2.7.x'
echo ''
tar -xf ./files/Python-2.7.14.tar.xz
cd ./Python-2.7.14
./configure
make
sudo make install
sudo cp -rf /usr/local/bin /usr/bin
sudo rm -rf /usr/local/bin
rm -rf ./Python-2.7.14

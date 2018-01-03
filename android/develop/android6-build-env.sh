#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

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
echo '>>>Change Make version to v3.82'
echo ''
tar -zxf ./files/make-3.82.tar.gz
cd ./make-3.82
./configure
make
sudo make install
sudo apt-get remove -y make
cd /usr/local/bin
sudo cp `ls` /usr/bin
cd $LOCAL_PATH
rm -rf ./make-3.82
echo '<<<<'
echo '>>>Change JDK version to v7'
echo ''
sh ./add_system_sources_list.sh
sudo apt remove -y openjdk-8-jre
sudo apt autoremove -y
sudo apt install -y openjdk-7-jre 
echo '<<<'
echo '>>>Change Python version to v2.7.x'
echo ''
sudo apt-get remove -y python
tar -xf ./files/Python-2.7.14.tar.xz
cd ./Python-2.7.14
./configure
make
sudo make install
cd /usr/local/bin
sudo cp `ls` /usr/bin
cd $LOCAL_PATH
cd ..
rm -rf ./Python-2.7.14
echo "<<<"

#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
echo '\033[33m=================安装 MAC 主题====================\033[32m'
echo ''
echo '\033[33m===============添加macbuntu资源===================\033[32m'
echo ''
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt update
sudo apt upgrade
echo '\033[33m================安装mac窗口主题====================\033[32m'
echo ''
sudo apt-get install  macbuntu-os-ithemes-lts-v7 
echo '\033[33m===================安装mac图标主题=================\033[32m'
echo ''
sudo apt-get install  macbuntu-os-icons-lts-v7
echo '\033[33m============安装plank与对应plank的mac主题===========\033[32m'
echo ''
sudo apt-get install  macbuntu-os-plank-itheme-lts-v7 
echo '\033[33m===========安装unity-tweak-tools配置主题工具=========\033[32m'
echo ''
sudo apt-get install  unity-tweak-tools

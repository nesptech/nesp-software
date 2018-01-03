#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
read -p "你的操作系统是?[d]eepin/[u]buntu-16.04   " mysystem
if [ "$mysystem" = "d" ];then
	sh ./deepin/install_for_deepin.sh
elif [ "$mysystem" = "u" ];then
	sh ./ubuntu-16.04/install_for_ubuntu-16.04.sh
fi

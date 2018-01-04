#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
read -p "请确定你的手机是否在Rcovery模式?[y/n]   " mysystem
if [ "$mysystem" = "y" ];then
	#adb reboot recovery
	adb push ~/.android/adbkey.pub /data/misc/adb/adb_keys
	adb reboot
elif [ "$mysystem" = "n" ];then
	echo '请将手机重启到Recovery，再运行本工具'

fi

#!/bin/bash
#LOCAL_PATH=$(cd `dirname $0`; pwd)
#cd $LOCAL_PATH

read -p "是否修复unauthorized[y/n]   " unauthorized
if [ "$unauthorized" = "y" ];then
 	read -p "请确定你的手机是否在Rcovery模式?[y/n]   " mysystem
	if [ "$mysystem" = "y" ];then
		#adb reboot recovery
		adb push ~/.android/adbkey.pub /data/misc/adb/adb_keys
		adb reboot
	elif [ "$mysystem" = "n" ];then
		echo '请将手机重启到Recovery，再运行本工具'

	fi
fi

read -p "是否修复no permissions?[y/n]   " permissions
if [ "$permissions" = "y" ];then
	lsusb
	#sudo echo '#NESP ADB DRIVE' > 51-android.rules
	echo ''
	echo '模板：'
	echo -e '\033[31m SUBSYSTEM=="usb",ATTRS{idVendor}=="",ATTRS{idProduct}=="",MODE="0666"\033[0m'
	echo ''
	sudo gedit /etc/udev/rules.d/51-android.rules
		read -p "是否写入DeviceID?[y/n]   " deviceid
		if [ "$deviceid" = "y" ];then
			#sudo cp 51-android.rules /etc/udev/rules.d/51-android.rules
			sudo chmod a+rx /etc/udev/rules.d/51-android.rules
			sudo service udev restart
			adb kill-server
			adb start-server
		elif [ "$deviceid" = "n" ];then
			echo -e "\033[31m 请写入DeviceID\033[0m"
		fi
fi


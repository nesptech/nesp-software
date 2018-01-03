read -p "你的操作系统是：[Deepin/Ubuntu]" mysystem
if [ "$mysystem" = "Deepin" ];then
	sh ./deepin/install_for_deepin.sh
elif [ "$mysystem" = "Ubuntu" ];then
	sh ./deepin/install_for_ubuntu.sh
fi

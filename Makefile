TOOLS_ROOT :=$(shell pwd)
DEVELOP_DIR :=$(TOOLS_ROOT)/android/develop
ANDROID_TOOLS_DIR :=$(TOOLS_ROOT)/android/tools
DOCS_DIR :=$(TOOLS_ROOT)/docs
DRIVE_DIR :=$(TOOLS_ROOT)/drive
FIX_LINUX :=$(TOOLS_ROOT)/fix_linux
PACKAGE_DIR :=$(TOOLS_ROOT)/package
FILES_DIR :=$(TOOLS_ROOT)/files
#TOOLS_ROOT :=$(shell dirname $(TOOLS_ROOT))

install-android6-env:
	sh $(DEVELOP_DIR)/android6-build-env.sh
install-patchflyme-tools:
	sh $(DEVELOP_DIR)/patchflyme.sh
install-patchmiui-tools:
	sh $(DEVELOP_DIR)/patchmiui.sh
install-android-sdk-tools:
	sh $(ANDROID_TOOLS_DIR)/install_android-tools.sh
install-drive-nvidia:
	sh $(DRIVE_DIR)/install_nvidia.sh
install_for_system:
	sh ./system/system.sh
fix-lantern:
	sh $(FIX_LINUX)/fix_lantern.sh
set_system_env:
	sh $(DEVELOP_DIR)/set_system_env.sh
fix-deepin-boot:
fix-ubuntu-boot:
update-system:
	@echo '\033[33m======================升级系统===================\033[32m'
	sudo apt-get update  
	sudo apt-get upgrade 
	sudo apt autoremove
	echo '\033[33m====================完成======================\033[32m'
	echo ''
	echo ''
all:
	@echo "不包括显卡驱动"	
	sh build/install_all.sh
#INFO FOR TOOLS
include $(DOCS_DIR)/info.mk
#FILES CONFIG
include $(FILES_DIR)/files.mk

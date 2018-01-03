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
install-for-system:
	sh ./system/system.sh
fix-lantern:
	sh $(FIX_LINUX)/fix_lantern.sh
set-system-env:
	sh $(DEVELOP_DIR)/set_system_env.sh
add-system-sources-list:
	sh $(DEVELOP_DIR)/add_system_sources_list.sh
install-deepin-deb:
	sh $(PACKAGE_DIR)/install_deb_deepin.sh
install-ubuntu-deb:
	sh $(PACKAGE_DIR)/install_deb_ubuntu.sh
common-develop-env:
	sh $(PACKAGE_DIR)/common-develop-env.sh
all-env:
	sh $(PACKAGE_DIR)/common-develop-env.sh
	sh $(DEVELOP_DIR)/set_system_env.sh
	
fix-deepin-boot:
fix-ubuntu-boot:
update-system:
	@echo '======================升级系统============================'
	$(hide) sudo apt-get update  
	$(hide) sudo apt-get upgrade 
	$(hide) sudo apt autoremove
	echo '============================完成==========================='
	echo ''
	echo ''
all:
	@echo "不包括显卡驱动"	
	sh build/install_all.sh
#INFO FOR TOOLS
include $(DOCS_DIR)/info.mk
#FILES CONFIG
include $(FILES_DIR)/files.mk

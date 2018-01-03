#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

	
sudo add-apt-repository -y ppa:yannubuntu/boot-repair && sudo apt-get update && sudo apt-get install -y boot-repair

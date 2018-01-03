#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
adb reboot recovery
adb push ~/.android/adbkey.pub /data/misc/adb/adb_keys

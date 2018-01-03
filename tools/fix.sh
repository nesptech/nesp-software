#!/bin/bash
adb reboot recovery
adb push ~/.android/adbkey.pub /data/misc/adb/adb_keys

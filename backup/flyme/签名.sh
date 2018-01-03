#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

keytool -genkey -v -alias NespKey -keyalg RSA -keysize 2048 -validity 10000 -keystore NespKey.keystore 
jarsigner -verbose -keystore NespKey.keystore sign_apk_file.apk NespKey
#或在vendor/META/apkcerts.txt文件中配置该apk的名字

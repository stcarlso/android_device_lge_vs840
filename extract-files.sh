#!/bin/sh

VENDOR=lge
DEVICE=vs840

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
	cp /opt/android/rom/system/$FILE $BASE/$FILE
#    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh

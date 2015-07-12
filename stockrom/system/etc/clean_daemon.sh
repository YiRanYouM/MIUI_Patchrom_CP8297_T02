#!/system/bin/sh
# Forbidden auto start service.
# writen at 2014.07.21
# 
#=================================[START]===================================== 
    
#LOG_NAME="${0}:"
LOG_TAG="YLLOG:CLEANDAEMON "


# The log function 
logd ()
{
  /system/bin/log -t $LOG_TAG -p d "$LOG_NAME $@"
}

forbidden_package=`busybox grep "name" /data/system/forbidden_autorun_packages.xml | busybox awk '{print $2}' | busybox cut -f 2 -d '"'`
forbidden_apk=""
for package in $forbidden_package
do
  forbidden_apk=${forbidden_apk}" "`busybox grep $package /data/system/packages.xml | busybox grep "\.apk" | busybox awk '{print $3}' | busybox cut -f 2 -d '"' | busybox cut -f 4 -d '/'`
done

pidstr=`ps | busybox awk '$3 == 1' | busybox grep -v "\/system\/bin"| busybox grep -v "\/sbin" | busybox grep -v "zygote" | busybox grep -v "system_server" | busybox awk '{print $2}'`

killed="false"

for pid in $pidstr
do
    killed="false"

    for pakcage in $forbidden_package
    do
        pakcage_scan=`cat /proc/$pid/smaps | grep $pakcage`
        if [[ $pakcage_scan != "" ]]
        then
            kill $pid
            logd clean $pakcage daemon $pid
            killed="true"
        fi
    done

    if [ $killed == "true" ]
    then
        continue
    fi

    for apk in $forbidden_apk
    do
        apks_can=`cat /proc/$pid/smaps | grep $apk`
        if [[ $apks_can != "" ]]
        then
            kill $pid
            logd clean $pakcage daemon $pid
        fi
    done
done

exit 0
#===================================[END]=====================================

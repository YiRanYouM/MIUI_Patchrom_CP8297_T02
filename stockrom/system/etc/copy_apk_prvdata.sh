#!/system/bin/sh
# backup or restore apk private data.
# writen by Eric Yan at 2012.11.05
# modify by chenerlei at 2012.11.07
# Usage: apk_backup.sh <0|1>,<1|2|3|4>,pkg_name
#        <0|1> for operation
#        0: backup, 1: restore
#        <1|2|3|4> for path
#        1 : storage/sdcard0/coolpad/apk
#        2 : storage/sdcard0/backup/app
#        3 : storage/sdcard1/coolpad/apk
#        4 : storage/sdcard1/backup/app
#
# Example: apk_backup.sh 1,1,com.sina.weibo
#        
# Output:     
#        yulong.apkbackup.status
#        <start|error|finish>
#=================================[START]===================================== 

LOG_TAG="APK_BACKUP"

TAR="busybox tar"
PROP_STATUS=yulong.apkbackup.status

# output the log  
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "YLLOG:$@"
}

# check if the arguments are wrong
if [ -z $1 ]
then
    logi "Usage: apk_backup.sh <0|1>,<1|2|3|4>,pkg_name"
    exit 1
fi

setprop $PROP_STATUS start

# parse the input arguments 
operate=${1:0:1}
path=${1:2:1}
pkg_name=${1:4}

logi "$1, operate=$operate, pkg_name='$pkg_name',path=$path"

# check the package exist
if [ ! -d "/data/data/$pkg_name" ]; then
    logi "'/data/data/$pkg_name' doesn't exist!"
    setprop $PROP_STATUS error
    exit 1
fi

# decide the place where to backup or restore
if   [ $path = "1" ]; then
    bkdir="/storage/sdcard0/coolpad/apk"
elif [ $path = "2" ]; then
    bkdir="/storage/sdcard0/backup/app"
elif [ $path = "3" ]; then
    bkdir="/storage/sdcard1/coolpad/apk"
elif [ $path = "4" ]; then
    bkdir="/storage/sdcard1/backup/app"
fi

# stop app if running
/system/bin/am force-stop $pkg_name
wait
# get the user name of the app(package)
#user=`ls -ld /data/data/$pkg_name|busybox cut -d' ' -f 2`
userid=`ls -n -ld /data/data/$pkg_name|busybox cut -d' ' -f 2`
logi "The user ID of $pkg_name is $userid"

# backup
# cd /data/data/$pkg_name
if [ $operate = "0" ]; then
    # make the directory
    mkdir -p $bkdir &>/dev/null
    # file sync
    busybox usleep 100000
    # fsync every database file
    ls -a /data/data/$pkg_name/databases | while read file
    do
        busybox fsync /data/data/$pkg_name/databases/${file} 
        logi "busybox fsync /data/data/$pkg_name/databases/${file}" 
        wait        
    done
    sync    
    # backup /storage/sdcard0/Android/data/$pkg_name/files
    if [ -e "/storage/sdcard0/Android/data/$pkg_name/files" ]; then
        logi "--internal sd data--"
        sddata="/storage/sdcard0/Android/data/$pkg_name/files"
    elif [ -e "/storage/sdcard1/Android/data/$pkg_name/files" ]; then
        # backup /storage/sdcard1/Android/data/$pkg_name/files
        logi "--external sd data--"
        sddata="/storage/sdcard1/Android/data/$pkg_name/files"
    fi
    logi "Backup sddata:$sddata"
    # backup the apk data except lib subdir
    $TAR -czv -f $bkdir/$pkg_name.tar --exclude=data/data/$pkg_name/lib* /data/data/$pkg_name $sddata
    ret=$?
    logi "backup result:$ret"
elif [ $operate = "1" ]; then
    # check if the tar file exist 
    if [ ! -s "$bkdir/$pkg_name.tar" ]; then
        logi "$bkdir/$pkg_name.tar does not exist!"
        setprop $PROP_STATUS error
        exit 1
    fi
    # restore the tar file
    $TAR -zxv -f $bkdir/$pkg_name.tar data/data/$pkg_name -C /    
    #check SD card insert and restore
    insertsd=`mount | grep sdcard1 | busybox cut -d ' ' -f 2`
    if [ "$insertsd" != "" ]; then
        logi "sd card insert."
        sddatapath=`$TAR -tv -f $bkdir/$pkg_name.tar| grep "storage/sdcard1/Android/data/$pkg_name/files"`
        if [ "$sddatapath" != "" ]; then
            logi "Restore external data."
            $TAR -zxv -f $bkdir/$pkg_name.tar storage/sdcard1/Android/data/$pkg_name/files -C / 
        else
            #check internal and restore
            intdatapath=`$TAR -tv -f $bkdir/$pkg_name.tar| grep "storage/sdcard0/Android/data/$pkg_name/files"`
            if [ "$intdatapath" != "" ]; then
                logi "Restore internal data."
                $TAR -zxv -f $bkdir/$pkg_name.tar storage/sdcard0/Android/data/$pkg_name/files -C / 
            fi
        fi
    else 
        #check internal and restore
        logi "sd card not insert."
        intdatapath=`$TAR -tv -f $bkdir/$pkg_name.tar| grep "storage/sdcard0/Android/data/$pkg_name/files"`
        if [ "$intdatapath" != "" ]; then
            logi "Restore internal data."
            $TAR -zxv -f $bkdir/$pkg_name.tar storage/sdcard0/Android/data/$pkg_name/files -C / 
        fi
    fi            
    ret=$?
    logi "restore result:$ret"
    # chown every file if need
    chown $userid:$userid /data/data/$pkg_name
    ls -a /data/data/$pkg_name | while read file1
    do  
        if [ "${file1}" != "lib" ]; then      
            busybox chown -R $userid:$userid /data/data/$pkg_name/${file1}
            #logi "chown $userid:$userid /data/data/$pkg_name/${file1}"
        fi         
    done
fi

# tell the backup apk we finish
setprop $PROP_STATUS finish

exit 0
#===================================[END]=====================================

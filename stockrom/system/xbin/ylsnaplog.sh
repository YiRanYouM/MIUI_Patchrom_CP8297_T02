#!/system/xbin/sh
# Grab a runtime snapshot info., eric yan 20130530
# Add procrank/librank, eric yan 20130605
# Add du data sdcard, top, chenglixing 20130718
# Add dumpsys meminfo, chenglixing 20130819
# Add du system,and packages.xml, chenglixing 20131220
# Process itself need root permission to run this script


LOG_DIR=${1:-/sdcard/snaplog}
BK_LOG_DIR=$LOG_DIR/bk

CRT_PROC='surfaceflinger|mediaserver|modemservice|PhoneSlotService|rild|zygote'

LS="ls"
RM="rm"
DF="busybox df"
CP="busybox cp"
AWK="busybox awk"
GREP="busybox grep"
DU="busybox du"

######
if [ ! -d $LOG_DIR ]
then
  if ! mkdir -p $LOG_DIR
  then
    exit 5
  fi
fi

######
echo "--- meminfo,vmalloc info,mounts,props,binder log..."
cat /proc/meminfo > $LOG_DIR/meminfo.txt
cat /proc/vmallocinfo > $LOG_DIR/vmallocinfo.txt
cat /proc/mounts > $LOG_DIR/mounts.txt
$DF -h > $LOG_DIR/disk_size.txt
$DU -h /data/ > $LOG_DIR/data_info.txt
$DU -h /sdcard/ > $LOG_DIR/sdcard_info.txt
$DU -a /system/ > $LOG_DIR/system_info.txt
top -n 1 -d 1 -m 30 -t > $LOG_DIR/top_30.txt
dumpsys meminfo -a > $LOG_DIR/dumpsys_meminfo.txt

ps -p -P -t > $LOG_DIR/ps.thread.txt
getprop > $LOG_DIR/props.txt
dbgfs_root=$(mount | $GREP debugfs | $AWK '{print $2}')
if [ -n dbgfs_root ]
then
  cat $dbgfs_root/binder/* > $LOG_DIR/binder_logs.txt 2>/dev/null
fi

######
echo "--- backup old logs"
$CP -rf /data/anr $BK_LOG_DIR/
$CP -rf /data/tombstones $BK_LOG_DIR/

$RM -r /data/anr/*
$RM -r /data/tombstones/*

######
echo "--- vm threads backtrace '/data/anr/traces.txt.bugreport'"

dumpstate -h 2>/dev/null

######
echo "--- procrank and librank"

if [ -x /system/xbin/procrank ]
then
  /system/xbin/procrank > $LOG_DIR/procrank.txt
fi

if [ -x /system/xbin/librank ]
then
  /system/xbin/librank > $LOG_DIR/librank.txt
fi

######
echo "--- threads backtrace of critical service process"

$GREP -E ${CRT_PROC} /proc/[0-9]*/comm | $GREP -oE [0-9]* | while read pid
do 
  cat /proc/${pid}/comm
  debuggerd ${pid}
done

######
echo "--- grab modify time of logfile"

KDIR=(
"/data/anr"
"/data/tombstones"
"/data/brs"
"/data/yl_debug_mode_stack.txt"
"/data/system/packages.xml"
"/data/system/uiderrors.txt"
"/data/system/dropbox"
#"/data/log"
)

######
echo "--- copy critial logs "
echo "-------------" > $LOG_DIR/log_time.txt

for d in ${KDIR[*]}
do
  if [ ! -e $d ]
  then
    continue
  fi

  $LS -lR $d >> $LOG_DIR/log_time.txt
  if [ -d $d ]
  then
    mkdir -p ${LOG_DIR}$d 2>/dev/null
    $CP -rf $d/* ${LOG_DIR}$d 2>/dev/null   
  else
    $CP -f $d ${LOG_DIR}$d 2>/dev/null
  fi
done

######
$RM -r /data/system/dropbox/* 2>/dev/null

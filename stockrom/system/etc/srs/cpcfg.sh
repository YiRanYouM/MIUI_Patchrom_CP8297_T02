#! system/bin/sh

if [ -d /data/data/media ]
then
    echo dir media exist!
else
    mkdir -p /data/data/media
    chown media /data/data/media
    chmod 775 /data/data/media
fi

CFGFILE=srs_processing.cfg
busybox diff /system/etc/srs/srs_processing.cfg /data/data/media/.$CFGFILE
if [ $? != 0 ]
then
    busybox cp /system/etc/srs/srs_processing.cfg /data/data/media/.$CFGFILE
    busybox cp /system/etc/srs/srs_processing.cfg /data/data/media/$CFGFILE
    chown media /data/data/media/$CFGFILE
    chmod 664 /data/data/media/$CFGFILE
fi

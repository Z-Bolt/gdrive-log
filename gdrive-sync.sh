#!/bin/bash
. /home/pi/gdrive-log/sync.conf # connect config
DESTDIR=$id_dir
LOGDIR=/home/pi/klipper_logs
SOURCELOG=/tmp/*.log
cp $SOURCELOG $LOGDIR # copy log to selfdir
gdrive sync upload $LOGDIR $DESTDIR # sync with Gdrive
#echo $key

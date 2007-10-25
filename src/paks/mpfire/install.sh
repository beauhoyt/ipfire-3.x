#!/bin/bash
. /opt/pakfire/lib/functions.sh

extract_files
ln -svf  /etc/init.d/mpd /etc/rc.d/rc3.d/S65mpd
ln -svf  /etc/init.d/mpd /etc/rc.d/rc0.d/K35mpd
ln -svf  /etc/init.d/mpd /etc/rc.d/rc6.d/K35mpd
ln -svf  /etc/init.d/mpd /etc/rc.d/rc6.d/K35mpd
ln -svf  /var/ipfire/mpfire/mpd.conf /etc/mpd.conf
touch /var/log/mpd.error.log
touch /var/log/mpd.log
restore_backup ${NAME}
start_service --delay 60 --background ${NAME}

#! /bin/sh
rm -rf /var/run/*
rm -f "/config/Library/Application Support/Plex Media Server/plexmediaserver.pid"
mkdir -p /var/run/dbus
chown messagebus:messagebus /var/run/dbus
dbus-uuidgen --ensure
dbus-daemon --system --fork
sleep 1
avahi-daemon -D
sleep 1
HOME=/config start_pms &
sleep 5
service nginx start
tail -f /config/Library/Application\ Support/Plex\ Media\ Server/Logs/Plex\ Media\ Server.log

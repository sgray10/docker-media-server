#!bin/bash
touch /config/web.log
/usr/bin/deluge-web --fork --port=8112 --logfile=/config/web.log --loglevel=debug -c /config
tail -f /config/web.log

#! /bin/sh
touch /config/CouchPotato.cfg
/usr/bin/python /CouchPotatoServer/CouchPotato.py --data_dir /data/potato --config_file /config/CouchPotato.cfg --console_log

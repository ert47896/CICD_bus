#!/bin/sh
cd /workspace/flask/app
[ -f checkpoint.txt ] && yes | rm checkpoint.txt
python ./module/table_init.py
python ./module/MOTCdata_init.py
uwsgi --ini app.ini

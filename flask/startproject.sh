#!/bin/sh
cd /workspace/flask/app
[ -f ./module/checkpoint.txt] && rm ./module/checkpoint.txt
python ./module/table_init.py
python ./module/MOTCdata_init.py
uwsgi --ini app.ini

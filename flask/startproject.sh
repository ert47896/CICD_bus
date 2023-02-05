#!/bin/sh
cd /workspace/flask/app
python ./module/test1.py
python ./module/table_init.py
python ./module/test2.py
sleep 30
python ./module/MOTCdata_init.py
python ./module/test3.py
uwsgi --ini app.ini

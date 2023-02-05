#!/bin/sh
cd /workspace/flask/app
chmod a+x ./module/MOTCdata_init.py
python ./module/table_init.py
python ./module/MOTCdata_init.py
uwsgi --ini app.ini

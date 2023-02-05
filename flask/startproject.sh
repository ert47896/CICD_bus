#!/bin/sh
cd /workspace/flask/app
#python ./module/table_init.py
#python ./module/MOTCdata_init.py
uwsgi --ini app.ini

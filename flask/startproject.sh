#!/bin/sh
cd /workspace/flask/app
echo "Hello world!"
python ./module/table_init.py
python ./module/MOTCdata_init.py
echo "Hello world2!"
uwsgi --ini app.ini

#!/bin/sh
cd /workspace/flask/app
python ./module/table_init.py
python ./module/MOTCdata_init.py
echo "Hello world!"
uwsgi --ini app.ini

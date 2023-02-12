#!/bin/sh
cd /workspace/flask/app
ls -la
[ -f checkpoint.txt ] && rm -r --interactive=never checkpoint.txt
python ./module/table_init.py
python ./module/MOTCdata_init.py
uwsgi --ini app.ini

#!/bin/sh
#check_result=$(docker exec -i web sh -c "test -f /workspace/flask/app/cache.txt && echo 'Success!'")
docker top web | grep "[p]ython ./module/MOTCdata_init.py"
while [ $(docker top web | grep "[p]ython ./module/MOTCdata_init.py") ];
do
	echo "Wait insert TDX data into MySQL"
	#echo $(docker exec -i web sh -c "cd /workspace/flask/app && ls -la")
	sleep 5
done
docker exec -i web sh -c "cd /workspace/flask/app && python -m pytest -v"


#!/bin/sh
#check_result=$(docker exec -i web sh -c "test -f /workspace/flask/app/cache.txt && echo 'Success!'")
while [ ! $(docker exec -i web sh -c "test -f /workspace/flask/app/checkpoint.txt && echo 'Success!'") ];
do
	echo "Wait insert TDX data into MySQL"
	#echo $(docker exec -i web sh -c "cd /workspace/flask/app && ls -la")
	sleep 5
done
[ -f ~/bus/flask/app/checkpoint.txt ] && yes y | rm ~/bus/flask/app/checkpoint.txt
docker exec -i web sh -c "cd /workspace/flask/app && python -m pytest -v"


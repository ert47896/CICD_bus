#!/bin/sh
#check_result=$(docker exec -i web sh -c "test -f /workspace/flask/app/module/cache.txt" && echo "Success!")
while [ ! $(docker exec -i web sh -c "test -f /workspace/flask/app/module/checkpoint.txt" && echo "Success!") ];
do
	echo "Wait insert TDX data into MySQL"
	sleep 5
done
docker exec -i web sh -c "cd /workspace/flask/app && python -m pytest -v"


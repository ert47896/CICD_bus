#!/bin/sh
#check_result=$(docker exec -i web sh -c "test -f /workspace/flask/app/cache.txt && echo 'Success!'")
unfinished=$(docker top web | grep "[p]ython ./module/MOTCdata_init.py")
finished=$(docker top web | grep "[p]ython test.py")
rm /bin/sh
ln -s /bin/bash /bin/sh
whoami
cd /bin
ls -la | grep sh
echo $unfinished
echo $test
while [ $unfinished ];
do
	echo "Wait insert TDX data into MySQL"
	#echo $(docker exec -i web sh -c "cd /workspace/flask/app && ls -la")
	sleep 5
done
docker exec -i web sh -c "cd /workspace/flask/app && python -m pytest -v"


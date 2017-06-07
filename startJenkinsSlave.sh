#!/bin/sh
date
result=`ps -efd | grep run_Jenkins | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "run_Jenkins_slave.sh script is already running"
   else
        echo "script is not running. Trying to start it now"
        cd /home/app.test/Jenkins-slave/
        /home/app.test/Jenkins-slave/run_Jenkins_Linux_slave.sh &
        exit
fi

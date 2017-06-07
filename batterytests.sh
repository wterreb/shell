#!/bin/bash

base="https://firmware-ci.eroad.io/view/Automated%20Tests%20(Develop)/job/DEV_EHUBO2_BATTERY_TESTS/"

for ((i=206; i>0; i--))
do
    url=$base/$i/console
    echo $url
    curl --cookie ~/cookies.txt $url > job-$i.html 2>/dev/null
    awk '/Verify current DURING MEMS movement/ {print $20}' < job-$i.html
    rm job-$i.html
done


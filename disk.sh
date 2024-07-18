#!/bin/bash
DISK_USAGE=$(df - hT | grep -vE 'tmp|File')
DISK_TREADSHOLD=1
while IFS= read line
do 
 usage=$(echo $line |  awk '{print$6F}' | cut -d % -f1)
 partition=$(echo $line | awk '{print$1F}')
 if [ $partition -ge $DISK_TREADSHOLD ]
 then
 echo "high usage $partition : $usage"
 fi
 done <<< $DISK_USAGE

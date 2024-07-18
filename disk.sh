#!/bin/bash
DISK_USAGE=$(df - hT | grep -vE 'tmp|File')
while IFS= read line
do 
 usage=$(echo $line |  awk '{print$6F}' | cut -d % -f1)
 echo "$usage"
 done <<< $DISK_USAGE

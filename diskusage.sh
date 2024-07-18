#!/bin/bash
DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_PARTITION=1
while IFS= read line
do
  usage=$(echo $line | awk '{print $6F}'| cut -d % -f1)
done<<<$DISK_USAGE
echo "$usage"
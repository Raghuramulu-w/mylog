#!/bin/bash
DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_PARTITION=1
while IFS= read line
do
  usage=$(echo $line | awk '{print $6F}'| cut -d % -f1)
  partition=$(echo $line | awk '{print $1F})
done<<<$DISK_USAGE
echo "$usage $partition
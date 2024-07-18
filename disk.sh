#!/bin/bash
DISK_USAGE=$(df - hT | grep xfs)
while IFS= read line
do 
 usage=$(echo "$line | awk '{print$6F}'| cut -d % -f1")
 done << $DISK_USAGE

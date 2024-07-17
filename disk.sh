#!/bin/bash
DISK_USAGE =$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
while IFS =read line
do 
usage=$(echo $line |awk '{print $6F}'|cut -d % -f1 )
partition = $(echo $line |  awk '{print $1F}')
if [ $usage -ge $DISK_THRESHOLD ]
then  
    message+="high disk usage on $partitation $usage \n"
fi
done
echo -e " message :$message"
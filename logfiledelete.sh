#!/bin/bash
SOURCE_DIR="/tmp/sourcefile.log"
if [ ! -d $SOURCE_DIR ]
then 
   echo "file not exit"
   exit 1
fi
while IFS= read -r line
do 
logfile=$(echo $line | find SOURCE_DIR -type f -mtime +14 -name "*.log")
#echo " old log files are $logfile "
done<<<$logfile


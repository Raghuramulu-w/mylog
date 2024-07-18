#!/bin/bash
SOURCE_DIR="/tmp/sourcefile.log"
if [ ! -d $SOURCE_DIR ]
then 
   echo "file not exit"
   exit 1
fi
while IFS= read -r line
do 
log-file=$(echo $line | find. -type f -mtime +14)
echo " old log files are $log_file"
done<<<$SOURCE_DIR


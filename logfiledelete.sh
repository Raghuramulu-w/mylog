#!/bin/bash
SOURCE_DIR="/tmp/sourcefile.log"
if [ ! -d $SOURCE_DIR ]
then 
   echo "file not exit"
   exit 1
fi
#while IFS= read -r line
#do 
logfile=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")
while IFS= read -r line
do
echo "deleting files $line"
#echo " old log files are $logfile "
done<<<$logfile


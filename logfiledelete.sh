#!/bin/bash
SOURCE_DIR="/tmp/sourcefile.log"
if [ ! -d $SOURCE_DIR ]
then 
   echo "file not exit"
   exit 1
fi
logfile=$(find $SOURCE_DIR -type f -mtime +2 -name "*.log")
while IFS= read -r line
do
   echo "deleting files $line "
    rm -rf $line
done<<<$logfile


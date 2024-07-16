#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR="/tmp/sourcefile.log"
#checking dir eit or not
if [ ! -d $SOURCE_DIR ]
then
    echo "file dos not exit "
    exit 1
fi
#finding .log file more than 14 days
FILESTODELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")
while IFS= read -r line
do 
  echo "deleting file $line "
  rm -rf $line
 done <<< $FILESTODELETE 
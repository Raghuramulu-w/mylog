#!/bin/bash
SOURCE_DIR="/tmp/sourceefile.log"
if [ ! -d $SOURCE_DIR ]
then 
   echo "file not exit"
   exit 1
fi


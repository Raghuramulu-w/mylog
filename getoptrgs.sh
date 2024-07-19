#!/bin/bash
NAME=""
WISHES=""
USAGE(){
    echo "usage ::$(basename $0) <N> name : <w> wishes"
    echo "options::"
    echo "-n :specify name which is mandatery"
    echo "-w : specify wishes ex :- goodmorning"
    echo "h: help and exit "
}
while getopts ":n:w:h " opt; do
  case $opt in 
    n) NAME="$OPTRG";;
s    w) WISHES="$OPTARG";;
    h|*) USAGE ; exit 1;;
    :)  USAGE ; exit 1;;
    \?) echo "invalid option:" USAGE ;exit 1 ;;
  esac
done
if [ -z $NAME ] || [ -z $WISHES ]
then
    echo "both N and W are mandatory options"
    USAGE 
fi
echo "hai $NAME : $WISHES iam learning devops"





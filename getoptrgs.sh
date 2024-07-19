#!/bin/bash
NAME=""
WISHES=""
USAGE(){
    echo "usage :: $(basename $0) -n <N> name : <w> wishes"
    echo "options::"
    echo "-n :specify name which is mandatery"
    echo "-w : specify wishes ex :- goodmorning"
    echo "h: help and exit "
}
while getopts ":n:w:h" opt; do
  case $opt in 
    n) NAME="$OPTARG";;
    w) WISHES="$OPTARG";;
    h) USAGE ; exit 1;;
    :)  USAGE ; exit 1;;
    \?) echo "invalid option:"$OPTARG"" >&2; USAGE ;exit 1 ;;
  esac
done
if [ -z "$NAME" ] ;
then
    echo "both N and W are mandatory options"
    USAGE 
    exit 1
fi
echo " hai $NAME : $WISHES iam learning devops"





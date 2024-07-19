#!/bin/bash
FRUITNAMES=""
VEGITABLES=""
USAGE(){
echo "usage :: $(basename $0) " 
echo "option"
echo "FRUITNAMES specify fruits"
echo "vegitables specify vegies"
echo "h : help and exit"

}
while getopts ":f:v:h" org; do
    case $org in
      f)FRUITNAMES="$OPTARG";;
      v)VEGITABLES="$OPTARG";;
       h)USAGE ; exit 1
       #\?) echo "invalid option USAGE exit"
    esac
done
if [ -z "$FRUITNAMES" ] || [ -z "$VEGITABLES" ]
then
    echo "both are manditory to enter"
    USAGE
    exit 1
fi
echo "fruits names are $FRUITNAMES vegitable name are $VEGITABLES "
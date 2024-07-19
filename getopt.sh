#!/bin/bash
FRUITNAMES=""
VEGITABLES=""
while getopt ":f:veg:h" org 
do
    case $org in
      f) FRUITNAMES="$OPTARGS";;
      veg) VEGITABLES="$OPTARGS";;
       h) USAGE ; exit 1
       \?) echo "invalid option USAGE exit"
    esac
done
if [ -z $FRUITNAMES ] || [ -z $VEGITABLES ]
then
echo "both are manditory to enter"
USAGE
exit
fi
echo "fruits names are $FRUITNAMES vegitable name are $VEGITABLES "
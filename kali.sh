#!/bin/bash
#echo $#
ze=$#
gu="GUI"
#if (( $ze == 0 ))
if [ "$ze" -eq "0" ]
then
 docker exec -it kali /bin/bash
elif [ "$1"x = "$gu"x ]
then
 remmina -c kali.remmina
else
 command='docker exec -t kali '$@
 $command
fi 

#!/bin/bash
#echo $#
ze=$#
gu="GUI"
in="init"
#if (( $ze == 0 ))
xhost +
if [ "$ze" -eq "0" ]
then
 docker exec -it kali /bin/bash
elif [ "$1"x = "$gu"x ]
then
 #docker exec -d kali rm /tmp/.X2-lock
 docker exec -d kali vncserver -kill :2
 echo 'closed'
 sleep 1
 docker exec -d kali vncserver -geometry 1366x768 :2
 sleep 1
 remmina -c kali.remmina
elif [ "$1"x = "$in"x ]
then
 docker exec -t kali rm /tmp/.X2-lock
 docker exec -t kali vncserver -geometry 1366x768 :2
else
 command='docker exec -t kali '$@
 $command
fi 

#!/bin/bash

if [ -z "$1" ]
then
echo "Usage: $0 {disk|memory|user}"
exit 1
fi

case "$1" in

disk)
usage=$(df -h / | tail -1 | awk '{print $5}')
echo "Disk Usage is: $usage"
;;

memory)
echo "Memory usage"
free -h
;;

user)
echo "Current user"
whoami
;;

uptime)
echo "System uptime"
uptime
;;

*)
echo "Invalid option"
echo "Usage: $0 {disk|memory|user}"
exit 2
;;

esac

exit 0

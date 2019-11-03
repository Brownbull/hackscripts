#!/bin/bash
if [ "$1" == "" ]
then
  echo "Needed file with ip addresses"
else
  for ip in $(cat $1); do nmap -p 80 -T4 $ip & done
fi

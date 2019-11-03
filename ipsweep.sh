#!/bin/bash
# ./ipsweep 10.0.15
# & allows run on threads

if [ "$1" == "" ]
then
  echo "You forgot an IP address!"
  echo "Syntax: ./ipsweep.sh 10.0.2"

else
  for ip in `seq 1 254` ; do
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
  done
fi

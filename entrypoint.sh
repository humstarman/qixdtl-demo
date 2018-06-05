#!/bin/bash

FILE=/mnt/demo.dat
if [ ! -f "$FILE" ]; then
  touch $FILE
  echo 0 > $FILE
fi
/app.py -p 8080 --host $HOST_IP --pod $POD_IP

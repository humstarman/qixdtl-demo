#!/bin/bash

FILE=/mnt/demo.dat
if [ ! -f "$FILE" ]; then
  touch $FILE
  echo 0 > $FILE
fi
ARGS=$@
[ -z "$ARGS" ] && ARGS="-p 8080"
ARGS+=" --host $HOST_IP --pod $POD_IP"
echo $ARGS
/app.py $ARGS 

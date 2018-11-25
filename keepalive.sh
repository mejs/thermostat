#!/usr/bin/env bash
PID=`cat /home/pi/thermostat/thermostat.pid`
if ! ps -p $PID > /dev/null 
then
  rm /home/pi/thermostat/thermostat.pid
  python /home/pi/thermostat/thermostat.py & echo $! >>/home/pi/thermostat/thermostat.pid
fi


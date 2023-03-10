#!/bin/bash
echo "Hello World"
export HOST_NAME=`cat /hostfs/etc/hostname`
printenv
exec telegraf

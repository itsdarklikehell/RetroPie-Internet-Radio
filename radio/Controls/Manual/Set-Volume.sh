#!/bin/bash
#echo "Volume control"
CONFIG(){
DEVICE="PCM"
}

SET_VOLUME_MANUAL(){
echo "Please enter a pecentage e.g '50%' and press [ENTER]..."
read PERCENT
amixer set $DEVICE $PERCENT
echo "Volume of device $DEVICE is set to $PERCENT"
}

CONFIG
SET_VOLUME_MANUAL
#SET_VOLUME_CONTROLLED





#!/bin/bash
CONFIG(){
DEVICE="PCM"
}

INCREASE(){
echo "Please enter a pecentage e.g '50%' and press [ENTER]..."
read PERCENT
echo "increase by $PERCENT"
amixer -q sset $DEVICE $PERCENT+
}

CONFIG
INCREASE
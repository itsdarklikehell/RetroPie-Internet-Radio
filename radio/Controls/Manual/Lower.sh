#!/bin/bash
CONFIG(){
DEVICE="PCM"
}

LOWER(){
echo "Please enter a pecentage e.g '50%' and press [ENTER]..."
read PERCENT
echo "decrease by $PERCENT"
amixer -q sset $DEVICE $PERCENT-
}
CONFIG
LOWER
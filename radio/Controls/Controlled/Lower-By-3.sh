#!/bin/bash
CONFIG(){
DEVICE="PCM"
PERCENT="3%"
}

LOWER(){
echo "decrease by $PERCENT"
amixer -q sset $DEVICE $PERCENT-
}
CONFIG
LOWER
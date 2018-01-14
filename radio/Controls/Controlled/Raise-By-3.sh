#!/bin/bash
CONFIG(){
DEVICE="PCM"
PERCENT="3%"
}

INCREASE(){
echo "increase by $PERCENT"
amixer -q sset $DEVICE $PERCENT+
}

CONFIG
INCREASE
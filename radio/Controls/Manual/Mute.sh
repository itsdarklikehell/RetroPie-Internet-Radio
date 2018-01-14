#!/bin/bash
CONFIG(){
DEVICE="PCM"
}

MUTE(){
echo "mute/unmute"
amixer -q sset $DEVICE toggle
}
CONFIG
MUTE
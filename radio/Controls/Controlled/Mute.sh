#!/bin/bash
set -euo pipefail
CONFIG(){
DEVICE="PCM"
}

MUTE(){
echo "mute/unmute"
amixer -q sset $DEVICE toggle
}
CONFIG
MUTE
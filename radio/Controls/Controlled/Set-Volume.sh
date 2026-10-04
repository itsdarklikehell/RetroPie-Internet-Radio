#!/bin/bash
#echo "Volume control"

set -euo pipefail
SET_VOLUME_MANUAL(){
alsamixer
}

SET_VOLUME_MANUAL

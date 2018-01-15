#!/bin/bash
kill $(ps aux | grep '[m]pg123' | awk '{print $2}')
kill $(ps aux | grep '[o]mxplayer' | awk '{print $2}') 
kill $(ps aux | grep '[v]lc' | awk '{print $2}')
kill $(ps aux | grep '[c]vlc' | awk '{print $2}')


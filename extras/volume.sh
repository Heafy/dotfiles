#!/bin/bash

NUMVOL=$(pactl list sinks | grep '^[[:space:]]Volume:' |     head -n $(( $SINK + 1 )) | tail -n 1 | sed -e "s,.* \([0-9][0-9]*\)%.*,\1,");
VOLUME='Volume: '

notify-send `echo $VOLUME $NUMVOL% ` \
        -t 500
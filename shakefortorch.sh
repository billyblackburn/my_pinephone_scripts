#!/bin/sh

FILE_Y="$(find /sys/bus/iio/devices/iio:device*/ -iname in_accel_y_raw)"

while true; do

        y_raw="$(cat "$FILE_Y")"

        if [[ "${y_raw}" == *"32768"* ]]
        then
          echo match && sxmo_flashtoggle.sh
        fi
done

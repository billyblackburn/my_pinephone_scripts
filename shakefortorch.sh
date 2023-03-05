#!/bin/sh

FILE_Y="$(find /sys/bus/iio/devices/iio:device*/ -iname in_accel_y_raw)"
FILE_X="$(find /sys/bus/iio/devices/iio:device*/ -iname in_accel_x_raw)"

while true; do
        s2 = "-32768"
        y_raw="$(cat "$FILE_Y")"

	if [[ "$y_raw" = "$s2" ]]
        then
          echo match
        fi
done

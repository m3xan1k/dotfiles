#!/usr/bin/env sh

if [ -z $1 ]; then
    echo "Argument required."
    exit 1
elif ! [ $1 -eq $1 ] 2>/dev/null; then
    echo "Argument must be numeric."
    exit 1
fi

value=$1
current=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
max=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)

if [ $value -lt 0 ] && [ $current -eq 0 ]; then
    # Brightness is at minimal value
    :
elif [ $value -gt 0 ] && [ $current -eq $max ]; then
    # Brightness is at maximum value
    :
else
    value=$(($current+$value))
    echo $value > /sys/class/backlight/amdgpu_bl0/brightness
fi

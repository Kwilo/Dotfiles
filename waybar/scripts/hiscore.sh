#!/usr/bin/env bash

# OS install date found by:
# $ sudo tune2fs -l /dev/sda3 | grep 'Filesystem created:'
# Here : https://unix.stackexchange.com/a/9993

os_install_date=$(date -d "28 April 2025" +%s)
current_date=$(date +%s)
time_since_install=$(($current_date - $os_install_date))
echo "$(($time_since_install / 86400)) Days"

exit

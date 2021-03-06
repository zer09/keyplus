#!/bin/bash
# Copyright 2017 jem@seethis.link
# Licensed under the MIT license (http://opensource.org/licenses/MIT)

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 hex_file"
fi

../host-software/keyplus_cli.py bootloader -d 6666:1111
sleep 1.5
./xusb-boot/scripts/flash.py -d 6666:b007 -f $1

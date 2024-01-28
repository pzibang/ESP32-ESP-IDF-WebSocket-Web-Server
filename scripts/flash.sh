#!/bin/bash

export root_path=${PWD}
# echo "root path: ${root_path}"

serial_dev=

if [ -n "$IDF_PATH" ]; then
    echo "IDF_PATH:${IDF_PATH}"
    idf.py -p /dev/ttyUSB0 flash
else
    echo "set environment"
    source ${root_path}/scripts/env_setup.sh
    if [ -n "$IDF_PATH" ]; then
        echo "IDF_PATH:${IDF_PATH}"

        idf.py -p /dev/ttyUSB0 flash
    else
        echo -e "Please download and setup esp-idf"
    fi
fi
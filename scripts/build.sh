#!/bin/bash

export root_path=${PWD}
# echo "root path: ${root_path}"

if [ -n "$IDF_PATH" ]; then
    echo "IDF_PATH:${IDF_PATH}"
    idf.py build
else
    echo "set environment"
    source ${root_path}/scripts/env_setup.sh
    if [ -n "$IDF_PATH" ]; then
        echo "IDF_PATH:${IDF_PATH}"

        idf.py build
    else
        echo -e "Please download and setup esp-idf"
    fi
fi

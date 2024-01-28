#!/bin/bash

#setup esp-idf path
source ~/esp/esp-idf/export.sh

#2. Print Environment Configuration
echo -e "\033[0;34m-------Development Environment -------------\033[0;0m"
echo -e "\033[0;31m  TOOLCHAIN_ROOT : \033[0;32m"$TOOLCHAIN_ROOT
echo -e "\033[0;31m  PATH           : \033[0;32m"$PATH
echo -e "\033[0;34m--------------------------------------------\033[0;0m"
export PS1="\[\e[32;1m\][MakeGo_DEMO]\[\e[0m\]:\w$ "
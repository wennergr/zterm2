#!/bin/bash
set -e

# Install lrzsz if needed
brew list -1 | grep lrzsz > /dev/null || brew install lrzsz

# Check for needed depdendencies
hash rz 2>/dev/null || { echo >&2 "Zmodem is required but it's not installed. Aborting."; exit 1; }
hash sz 2>/dev/null || { echo >&2 "Zmodem is required but it's not installed. Aborting."; exit 1; }
hash osascript 2>/dev/null || { echo >&2 "Osascript is required but it's not installed. Aborting."; exit 1; }

INSTALL_DIR=/usr/local/bin
sudo mkdir -p ${INSTALL_DIR}

sudo install -m 555 ziterm2-recv.sh ${INSTALL_DIR}
sudo install -m 555 ziterm2-send.sh ${INSTALL_DIR}

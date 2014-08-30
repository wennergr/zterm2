#!/bin/bash
set -e

INSTALL_DIR=/usr/local/bin
sudo mkdir -p ${INSTALL_DIR}

# Install lrzsz if needed
brew list -1 | grep lrzsz > /dev/null || brew install lrzsz

sudo install -m 555 ziterm2-recv.sh ${INSTALL_DIR}
sudo install -m 555 ziterm2-send.sh ${INSTALL_DIR}

#!/bin/bash

# Install lrzsz if needed
brew list -1 | grep lrzsz > /dev/null || brew install lrzsz

sudo install -m 555 ziterm2-recv.sh /usr/local/bin
sudo install -m 555 ziterm2-send.sh /usr/local/bin

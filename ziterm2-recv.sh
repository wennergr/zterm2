#!/bin/bash
# ZModem transfer support for iterm2
set -e

TITLE="iterm2 zmodem transfer"

DOWNLOAD_DIR=~/Downloads

# Verify that rz is installed
# brew install lrzsz
hash rz 2>/dev/null || { echo >&2 "I require zmodem but it's not installed. Aborting."; exit 1; }

osascript -e "display notification \"File transfer from remote host started\" with title \"${TITLE}\""

# Execute rz
rz

osascript -e "display notification \"File transfer from remote host completed. File is available in the ${DOWNLOAD_DIR} folder\" with title \"${TITLE}\""



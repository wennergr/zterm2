#!/bin/bash
# ZModem transfer support for iterm2
set -e

# Verify that rz is installed
# brew install lrzsz
hash sz 2>/dev/null || { echo >&2 "I require zmodem but it's not installed. Aborting.";  exit 1; }

TITLE="iterm2 zmodem transfer"

FILE=`osascript -e 'tell application "iTerm" to activate' -e 'tell application "iTerm" to set thefile to choose file with prompt "Choose a file to send"' -e "do shell script (\"echo \"&(quoted form of POSIX path of thefile as Unicode text)&\"\")"`
if [[ $FILE = "" ]]; then
    #echo -e \\x18\\x18\\x18\\x18\\x18
    osascript -e "display notification \"File transfer to remote host aborted\" with title \"${TITLE}\""
else
    osascript -e "display notification \"File transfer from remote host started\" with title \"${TITLE}\""
    sz "$FILE"
    osascript -e "display notification \"File transfer from remote host completed\"  with title \"${TITLE}\""
fi

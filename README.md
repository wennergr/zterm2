ZModem support for iterm2
------------------------------

Ideas and kudos goes out to: https://github.com/mmastrac/iterm2-zmodem

Setup is pretty simple:

1. Run ```sudo ./install.sh```
2. Set up Triggers (Open Profiles->Edit Profies->Profiles->Advanced) in iTerm 2 like so:

<pre>
    Regular expression: \*\*B0100
    Action: Run Silent Coprocess
    Parameters: /usr/local/bin/zterm2-zend.sh

    Regular expression: \*\*B00000000000000
    Action: Run Silent Coprocess
    Parameters: /usr/local/bin/ziterm2-recv.sh
</pre>

To send a file to a remote machine:

1. Type "rz" on the remote machine
2. Select the file(s) on the local machine to send

The receive a file from a remote machine

1. Type "sz filename1 filename2 … filenameN" on the remote machine


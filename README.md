ZModem support for iterm2
------------------------------

Provide you with the ability to send files using your terminal between
machines. It's slower then scp but very convenient.

You neeed to instal zmodem on the remote machines.
For ubuntu/debian: ```apt-get install lrzsz```

Setup is pretty simple:

1. Run ```./install.sh```
2. Set up Triggers (Open Profiles->Edit Profies->Profiles->Advanced) in iTerm 2 like so:

### Send trigger
<pre>
    Regex: \*\*B0100
    Action: Run Silent Coprocess
    Parameters: /usr/local/bin/ziterm2-send.sh
</pre>
### Recv trigger
<pre>
    Regex: \*\*B00000000000000
    Action: Run Silent Coprocess
    Parameters: /usr/local/bin/ziterm2-recv.sh
</pre>

### Expected result
![iterm-image](https://raw.githubusercontent.com/wennergr/zterm2/master/doc/images/iterm2-install.png "Trigger Settings")


### Usage
To send a file to a remote machine:

1. Type "rz" on the remote machine
2. Select the file(s) on the local machine to send

The receive a file from a remote machine

1. Type "sz filename1 filename2 … filenameN" on the remote machine

Ideas and kudos goes out to: https://github.com/mmastrac/iterm2-zmodem


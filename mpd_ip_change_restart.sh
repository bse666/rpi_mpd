#!/bin/bash

# change to the directory that contains the script!
#cd /home/nutzername/test

FILE='./myip.txt'

# get current ip address
IP=$(curl "http://www.networksecuritytoolkit.org/nst/cgi-bin/ip.cgi"
2>/dev/null)

# check if the ip has changed
if ! grep -q $IP $FILE 2>/dev/null; then

# update ip...
echo $IP > $FILE

# ...and restart mpd
echo "restarting mpd"

# TODO restart mpd; gegebenenfalls Kommando anpassen
mpd restart
fi

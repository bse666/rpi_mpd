#!/bin/sh
PLAYLIST=`mpc playlist`

if [ -z "$PLAYLIST" ];
then
	mpc add ""
	mpc consume on
	mpc random on
	mpc play
	mpc volume 85
else
	mpc play
fi


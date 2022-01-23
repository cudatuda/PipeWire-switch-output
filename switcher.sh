#!/bin/bash

# Your headphones name (or keyword)
# and another device you want switch to (or keyword)
#
# You can find these names (or keywords) by running this command:
#    wpctl status | grep -A3 -m 1 Sinks | tail -n 3 |
#
#	EXAMPLE:
#	headphonesName=HyperX
# 	anotherDevice=HDMI

headphonesName=HyperX
anotherDevice=HDMI


# Getting headphones sink id
headphones=`wpctl status | grep -A3 -m 1 Sinks | tail -n 3 | grep $headphonesName | grep -oP '^[^0-9]*\K[0-9]+'`

# Getting another device sink id
device=`wpctl status | grep -A3 -m 1 Sinks | tail -n 3 | grep $anotherDevice | grep -oP '^[^0-9]*\K[0-9]+'`



if [[ "$(wpctl status | grep -A3 -m 1 Sinks | tail -n 3 | grep "\*")" = *"$headphonesName"* ]]; then	
	let nonActive=$device
	nonActiveName=$anotherDevice
	nonActiveIcon=speaker
else
	let nonActive=$headphones
	nonActiveName=$headphonesName
	nonActiveIcon=headphones
fi

# Changing output  	
wpctl set-default $nonActive &&

# Sending notification (comment the line below if you don`t want notifications)
notify-send.sh "Audio output" "Switched to $nonActiveName" -u low --icon=$nonActiveIcon

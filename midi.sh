#!/bin/bash

# Moved the ttymidi startup to the service script

keyclient=$(aconnect -l | grep 'client.*Arturia MiniLab mkII' | sed 's/client \([0-9]*\):.*/\1/g')
keyport=$(aconnect -l | grep 'Arturia MiniLab mkII MIDI 1' | sed 's/^ *\([0-9]*\) .*/\1/g')

midiclient=$(aconnect -l | grep 'client.*ttymidi' | sed 's/client \([0-9]*\):.*/\1/g')
midiport=1

echo "connect ${keyclient}:${keyport} ${midiclient}:${midiport}"
aconnect ${keyclient}:${keyport} ${midiclient}:${midiport}


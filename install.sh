#!/bin/bash
# create a starter
# locate this file
pwd=$(pwd)
logopath="$pwd"/logo.png
execpath="$pwd"/Starter-Manager.sh
STARTERCONFIG="[Desktop Entry]\nType=Application\nTerminal=true\nName=Starter-Manager\nIcon=$logopath\nDescription=This is a Startermanager\nExec=sudo $execpath\n"
echo -en $STARTERCONFIG >/usr/share/applications/"StarterManager".desktop
echo "finished, you can now start the startermanager by searching for it in the menu"

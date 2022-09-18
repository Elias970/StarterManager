#!/bin/bash

createStarter() {
    # get the starter information
    echo "Enter the name of the starter"
    read starterName
    echo "The starter name is $starterName"
    echo "Enter the path of the sh file"
    read path
    echo "Enter the path to the new icon"
    read icon
    echo "Enter the description of the starter"
    read description
    echo "Does the starter run in a terminal? (y/n)"
    read terminal
    if [ $terminal == "y" ]; then
        terminal="true"
    else
        terminal="false"
    fi
    # create the starter config
    STARTERCONFIG="[Desktop Entry]\nType=Application\nTerminal=$terminal\nName=$starterName\nIcon=$icon\nDescription=$description\nExec=$path\n"

    # save the starter
    echo -en $STARTERCONFIG
    echo -en $STARTERCONFIG >/usr/share/applications/"$starterName".desktop
}

deleteStarter() {
    echo "Enter the name of the starter"
    read starterName
    rm /usr/share/applications/"$starterName".desktop
}
showStarters() {
    ls /usr/share/applications
    echo "Do you want to delete a starter? (y/n)"
    read delete
    if [ "$delete" == "y" ]; then
        deleteStarter
    fi
}
# Main
echo "Welcome to the starter creator"
echo "This script will create or delete a starter"
echo "What do you want to do?"
echo "1. Create a starter"
echo "2. Delete a starter"
echo "3. Show all starters"
echo "4. Exit"
read action
if [ "$action" == "1" ]; then
    createStarter
elif [ "$action" == "1" ]; then
    deleteStarter
elif [ "$action" == "3" ]; then
    showStarters
elif [ "$action" == "4" ]; then
    exit
else
    echo "Invalid action"
fi


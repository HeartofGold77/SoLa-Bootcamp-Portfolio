#!/bin/bash

#Blake Miller
#date created: 7/14/2025


#commands for displaying hostname ip address uptime and kernal version

Display_System_Info(){


    hname = $(hostname)
    ip = $(ip addr)
    up = $(uptime)
    kernal = $(uname -a)

    echo "The hostname is $hname"
    echo ip
    echo up
    echo kernal

}


main(){
    Display_System_Info


}

main
#!/bin/bash

#Blake Miller
#date created: 7/14/2025


#commands for displaying hostname ip address uptime and kernal version

Display_System_Info(){


    hname=$(hostname)
    ip=$(ip addr)
    up=$(uptime)
    kernal=$(uname -a)

    echo "The hostname is $hname"

    echo ""
    echo ""
    echo "Ip info"
    echo "$ip" 
    
    echo ""
    echo ""
    echo "Uptime info"
    echo "$up"
    
    echo ""
    echo ""
    echo "Kernal info"
    echo "$kernal"

}

#function that dipslays users and WILL when added, alert users if
# a user doe not have a passeword

List_Users(){
    who=$(who)
    #local users=(who)
    echo ""
    echo ""
    echo "User info"
    echo "$who"


}

#function that lists disk space WILL when added alert users if disk space
# reaches a certain threshold


Disk_Usage(){

    disk=$(df -h)
    echo ""
    echo ""
    echo "Disk info"
    echo "$disk"


}


main(){
    Display_System_Info
    Disk_Usage
    List_Users

}

main
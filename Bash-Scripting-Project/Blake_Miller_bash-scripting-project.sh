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

#this function lists the top 20 procees running that use the most memeory

Process_List(){
    process=$(top -b -o +%MEM | head -n 20)
    echo ""
    echo ""
    echo "Process info"
    echo "$process" 


}
#displays failed login attempts for user but does ask for 
#password since sudo is used


Failed_Logins(){
    fail=$(sudo lastb)
    echo ""
    echo ""
    echo "Failed login info"
    echo "$fail" 


}

#Checks if multiple systems are active 

Active_Systems(){

    audit=$(sudo systemctl is-active adutitd.service)
    echo ""
    echo ""
    echo ""
    echo "aduitd is $audit"

    cron=$(sudo systemctl is-active cron.service)
    echo ""
    echo ""
    echo ""
    echo "cron is $cron"

    journal=$(sudo systemctl is-active systemd-journald.service)
    echo ""
    echo ""
    echo ""
    echo "systemd-journald is $journal"


    ufw=$(sudo systemctl is-active ufw.service)
    echo ""
    echo ""
    echo ""
    echo "ufw is $ufw"

    sys=$(ps -p 1 -o comm=)
    echo ""
    echo ""
    echo ""
    echo "$sys is currently running on the system"
}


main(){

    now=$(date +"%Y-%m-%d_%H-%M-%S")

    Display_System_Info >> ~/Desktop/report-$now.txt
    Disk_Usage >> ~/Desktop/report-$now.txt
    List_Users >> ~/Desktop/report-$now.txt
    Process_List >> ~/Desktop/report-$now.txt
    Failed_Logins >> ~/Desktop/report-$now.txt
    Active_Systems >> ~/Desktop/report-$now.txt

}


main
#!/bin/bash

#Create an array of usernames to be added to a group
usernames=("atanaka" "alee" "rpatel")

#Add each user to the group
for username in "${usernames[@]}"; do
    sudo usermod -aG groupname "$username"
done
 
echo "Successfully added users to the group"

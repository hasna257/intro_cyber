#!/bin/bash

# This script creates multiple users based on an array of usernames.
#
# Username array
usernames=("atanaka" "alee" "rpatel")

# delte the users by looping through the array
for username in "${usernames[@]}"
do
    sudo delete_users.sh -m "$username"
done

echo "Successfully deleted users"

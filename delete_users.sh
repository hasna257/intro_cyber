#!/bin/bash

usernames=("atanaka" "alee" "rpatel")

for username in "${usernames[@]}"; do
    if ! getent passwd "$username" > /dev/null; then
        echo "User does not exist: $username"
        continue
    fi

    if ! sudo userdel "$username"; then
        echo "Failed to delete user: $username" >&2
        exit 1
    fi
done

echo "User deletion complete"
#!/bin/bash

# Username array
usernames=("atanaka" "alee" "rpatel")

for username in "${usernames[@]}"; do
    if getent passwd "$username" > /dev/null; then
        echo "User already exists: $username"
        continue
    fi

    if ! sudo useradd -m "$username"; then
        echo "Failed to create user: $username" >&2
        exit 1
    fi
done

echo "User creation complete"

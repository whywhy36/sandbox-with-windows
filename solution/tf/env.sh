#!/bin/bash

# Generate an SSH key pair
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N "" -q

# Read the content of the public key file into a variable
public_key=$(cat ~/.ssh/id_rsa.pub)

cat <<EOF
{
    "sandbox_id": "$SANDBOX_ID",
    "sandbox_name": "$SANDBOX_NAME",
    "ssh_pub": "$public_key"
}
EOF

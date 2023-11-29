#!/bin/bash

# Set the version
version="1.14.1"

# Download the agent
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_linux_amd64.zip

# Unzip the agent
unzip tfc-agent_${version}_linux_amd64.zip

# Set the execute permission
chmod +x tfc-agent

# Ask for the token
echo "Please enter your Terraform token:"
read token

# Run the agent
./tfc-agent -token=$token

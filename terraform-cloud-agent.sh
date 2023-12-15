#!/bin/bash

# Set the version
version="1.14.1"

# Download the agent
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_linux_amd64.zip

# Unzip the agent to /usr/bin
unzip tfc-agent_${version}_linux_amd64.zip -d /usr/bin

# Set the execute permission
chmod +x /usr/bin/tfc-agent

# Ask for the token
echo "Please enter your Terraform token:"
read token

# Define the file path
FILE="/etc/systemd/system/tfc-agent.service"

# Use sudo to create the file and write the content
sudo bash -c "cat > $FILE" <<EOF
[Unit]
Description=Terraform Cloud Agent
After=network.target

[Service]
ExecStart=/usr/bin/tfc-agent -token=$token

[Install]
WantedBy=multi-user.target
EOF

# Enable the service to start on boot
sudo systemctl enable tfc-agent

# Start the service
sudo systemctl start tfc-agent

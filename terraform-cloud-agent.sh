#!/bin/bash

# Set the version
version="1.14.1"

# Download the agent
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_linux_amd64.zip

# Unzip the agent
unzip tfc-agent_${version}_linux_amd64.zip

# Set the execute permission
chmod +x tfc-agent

# Run the agent
./tfc-agent -token=UVxs48cCwnpoRg.atlasv1.bAiDcj4Vx947Aq2TCw4F1IgFyz6uxOwslayVGw9GJa8eYYwuoVBAxWTg3PWMLt1Rlek

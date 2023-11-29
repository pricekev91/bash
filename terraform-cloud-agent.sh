#!/bin/bash

# Set the version
version="0.0.1"

# Download the agent
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_linux_amd64.zip

# Download the checksum
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_SHA256SUMS

# Download the checksum signature
wget https://releases.hashicorp.com/tfc-agent/${version}/tfc-agent_${version}_SHA256SUMS.sig

# Verify the signature file (you'll need to import HashiCorp's public key if you haven't already)
gpg --verify tfc-agent_${version}_SHA256SUMS.sig tfc-agent_${version}_SHA256SUMS

# Verify the SHA256 checksum of the zip file
sha256sum -c tfc-agent_${version}_SHA256SUMS 2>&1 | grep OK

# Unzip the agent
unzip tfc-agent_${version}_linux_amd64.zip

# Set the execute permission
chmod +x tfc-agent

# Run the agent
./tfc-agent -token=UVxs48cCwnpoRg.atlasv1.bAiDcj4Vx947Aq2TCw4F1IgFyz6uxOwslayVGw9GJa8eYYwuoVBAxWTg3PWMLt1Rlek

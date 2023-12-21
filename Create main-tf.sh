#!/bin/bash

# Define the directory where you want to save the file
DIR="/home/root/terraform-projects/Alpaca AI Assistant Proj"

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Define the file path
FILE="$DIR/main.tf"

# Write the Terraform configuration to the file
cat > "$FILE" << EOF
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "price-lab"

    workspaces {
      name = "POC"
    }
  }
}
EOF

# Print a message to indicate success
echo "Terraform configuration has been written to $FILE"

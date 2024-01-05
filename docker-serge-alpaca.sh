# Update packages
clear 
echo "Updating packages..."
sudo apt update
read -n 1 -s -r -p $'\e[5mPackages updated. Press any key to continue\e[0m'
clear

# Install Docker
echo "Installing Docker..."
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
read -n 1 -s -r -p $'\e[5mDocker installed. Press any key to continue\e[0m'
clear

# Verify Docker installation
echo "Verifying Docker installation..."
docker_status=$(systemctl is-active docker)
echo "Docker is currently: $docker_status"
read -n 1 -s -r -p $'\e[5mDocker installation verified. Press any key to continue\e[0m'
clear

# Install git
echo "Installing git..."
sudo apt install git
read -n 1 -s -r -p $'\e[5mGit installed. Press any key to continue\e[0m'
clear

# Clone the Serge repository
echo "Cloning the Serge repository..."
sudo git clone https://github.com/serge-chat/serge
read -n 1 -s -r -p $'\e[5mSerge repository cloned. Press any key to continue\e[0m'
clear

# Navigate to the Serge directory
echo "Navigating to the Serge directory..."
cd serge
read -n 1 -s -r -p $'\e[5mNavigated to Serge directory. Press any key to continue\e[0m'
clear

# Build the Docker image
echo "Building the Docker image..."
sudo docker build -t serge .
read -n 1 -s -r -p $'\e[5mDocker image built. Press any key to continue\e[0m'
clear

# Run the Docker container
echo "Running the Docker container..."
#sudo docker run -d --restart always -p 8008:8008 -v serge # Keep in mind that -v is for mounting directories.   In this case the location to model I'm using.
sudo docker run -d --restart always -p 8008:8008 -v /mnt/ai-models/WizardLM-Uncensored-30B.bin:/usr/src/app/weights/WizardLM-Uncensored-30B.bin serge
read -n 1 -s -r -p $'\e[5mDocker container running. Press any key to continue\e[0m'

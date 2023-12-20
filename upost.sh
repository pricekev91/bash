#!/bin/bash
sudo apt-get update # Fetches the list of available updates
sudo apt-get upgrade # Installs some updates; does not remove packages
sudo apt-get full-upgrade # Installs updates; may also remove some packages, if needed
sudo apt-get autoremove # Removes any old packages that are no longer needed
sudo snap install btop -y #installs btop monitoring tool
sudo apt-get install git -y #duh git
sudo apt-get install unzip -y #unzip which is needed for tfc agent install.

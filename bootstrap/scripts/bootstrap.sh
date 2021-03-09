#!/bin/bash

# Update Ubuntu and get standard repository programs
## sudo apt update && sudo apt full-upgrade -y insert back in once complete

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# defaults
install git
install curl
install awscli
# install openvpn

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Run scripts in setup/
for s in setup/*.sh; do bash "$s" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

# All done
echo "Bootstrap successful - you're up and running"


#!/bin/bash

# Set username and email for next commands
read -p "Please enter your work email:" userEmail
read -p "Please enter your full name:" username

# Configure Git
git config --global user.email "${userEmail}"
git config --global user.name "${username}"
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
git config --global core.autocrlf input
git config --global push.default simple

# aliases
git config --global alias.lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

# Generate a new SSH key
ssh-keygen -t rsa -b 4096 -C "${userEmail}"

# Start ssh-agent and add the key to it
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

# Display the public key ready to be copy pasted to GitHub
cat ~/.ssh/id_rsa.pub

echo "Git is almost complete. Please copy and paste your above key into GitHub - https://github.com/settings/ssh/new"
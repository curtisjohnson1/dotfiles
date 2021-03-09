#!/bin/bash

# https://github.com/Versent/saml2aws#linux

echo "installing saml2aws"

CURRENT_VERSION=2.27.1

wget https://github.com/Versent/saml2aws/releases/download/v${CURRENT_VERSION}/saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz

tar -xzvf saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz -C ~/usr/local/bin
chmod u+x ~/usr/local/bin/saml2aws
saml2aws --version

## source ~/.bashrc to be able to use this in the same terminal
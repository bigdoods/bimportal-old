#!/bin/bash

apt-get update
apt-get install -y git curl
# install viking
curl -sSL  https://raw.githubusercontent.com/binocarlos/viking/master/install.sh | sudo sh
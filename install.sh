#!/bin/bash

apt-get update
apt-get install -y git curl
curl -sSL  https://raw.githubusercontent.com/binocarlos/viking/master/install.sh | sudo sh
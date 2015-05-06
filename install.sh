#!/bin/bash

cd /vagrant && make all
ln -s /vagrant/bimctl /usr/local/bin/bimctl
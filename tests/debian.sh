#!/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get install ruby ruby-dev augeas-tools facter lsb-release -y

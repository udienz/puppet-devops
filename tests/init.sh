#!/bin/bash

set -x

gem install json metadata-json-lint bundler
bundle install
bundle exec rake validate lint

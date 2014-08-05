#!/bin/bash
cp config.yml config.yml.bak
sed "s#BASE_PATH##g" -i config.yml
sed "s#PRODUCTION_URL##g" -i config.yml
bundle exec ruhoh serve
mv config.yml.bak config.yml

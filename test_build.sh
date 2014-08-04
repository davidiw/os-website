#!/bin/bash
rm -rf compiled
dir=$(dirname $(readlink -f $0))/compiled
cp config.yml config.yml.bak
sed "s#BASE_PATH#$dir#g" -i config.yml
sed "s#PRODUCTION_URL#file:/$dir#g" -i config.yml
bundle exec ruhoh compile
mv config.yml.bak config.yml
mv $dir/$dir/* $dir/.

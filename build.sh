#!/bin/bash
base=classes/cs422/2014fa
full=http://zoo.cs.yale.edu/$base
rm -rf compiled
dir=$(dirname $(readlink -f $0))/compiled
cp config.yml config.yml.bak
sed "s#BASE_PATH#$base#g" -i config.yml
sed "s#PRODUCTION_URL#$full#g" -i config.yml
bundle exec ruhoh compile
mv config.yml.bak config.yml
mv -f live old
mv compiled/$base live
rm -rf old compiled
chmod g+w -R $PWD 2> /dev/null

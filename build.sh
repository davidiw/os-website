#!/bin/bash
base=classes/cs422/2014fa
full=http://zoo.cs.yale.edu/$base
dir=$(dirname $(readlink -f $0))/compiled
cp config.yml config.yml.bak
sed "s#BASE_PATH#$base#g" -i config.yml
sed "s#PRODUCTION_URL#$full#g" -i config.yml
bundle exec ruhoh compile ../web.tmp
mv config.yml.bak config.yml
rm -rf ../web.live
mv -f ../web.tmp ../web.live
chmod g+w -R $PWD 2> /dev/null

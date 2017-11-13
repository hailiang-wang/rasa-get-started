#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
docker run -it \
    --rm \
    -e NODE_ENV=production \
    -v $PWD/docker/trainer/data:/data \
    -p 8006:8080 \
    registry.arrking.com/ada/nlu-trainer:develop \
    node server.js -p 8080 -s /data/sample.json


#! /bin/bash 
###########################################
#
# https://hub.docker.com/r/rasa/rasa_nlu/
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
docker run -p 5000:5000 rasa/rasa_nlu:0.10.4-full

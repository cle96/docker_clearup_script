#!/bin/bash
#===============================================================================
#
#          FILE:  clearup.sh
# 
#         USAGE:  ./clearup.sh 
# 
#   DESCRIPTION:  Docker clearup script
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  08/25/2017 08:49:01 AM CEST
#      REVISION:  ---
#===============================================================================

for image in $(docker image --filter "dangling=true" --quiet);do docker rmi $image;done
for container in $(docker ps -a -q -f status=exited);do docker rm $container; done


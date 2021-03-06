#!/bin/bash
 
echo 'Starting to Deploy...'
ssh ubuntu@18.118.77.242 " sudo docker image prune -f 
        cd shangrila-web-application 
        sudo docker-compose down
        git fetch origin development
        git reset --hard origin/develop
        sudo docker-compose build && sudo docker-compose up -d
        "
echo 'Deployment completed successfully'
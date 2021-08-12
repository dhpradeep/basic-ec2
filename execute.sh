#!/bin/bash
 
echo 'Starting to Deploy...'
ssh ubuntu@18.118.77.242 "cd shangrila-web-application 
        sudo docker-compose down
        git pull origin development
        sudo docker-compose up --build -d
        "
echo 'Deployment completed successfully'
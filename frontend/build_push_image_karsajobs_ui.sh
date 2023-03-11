#!/bin/bash

#build image docker from docker file in current directory
docker build -t karsajobs-ui:latest .

#giva tag to local images karsajob-backend:latest to gihub registry
docker tag karsajobs-ui:latest ghcr.io/andreanz22/karsajobs-ui:latest

#login to gihub with token
echo $GITHUB_TOKEN | docker login ghcr.io -u andreanz22 --password-stdin

docker push ghcr.io/andreanz22/karsajobs-ui:latest


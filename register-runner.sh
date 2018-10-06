#!/bin/sh

GITLABCI_URL=$1
GITLABCI_TOKEN=$2
RUNNER_NAME=${3:-$(hostname)}

docker exec -ti gitlab-runner gitlab-ci-multi-runner register \
   --non-interactive \
   --url $GITLABCI_URL \
   --registration-token $GITLABCI_TOKEN \
   --name $RUNNER_NAME \
   --executor docker \
   --docker-image docker:git \
   --docker-volumes '/var/run/docker.sock:/var/run/docker.sock' \
   --docker-volumes '/builds:/builds'


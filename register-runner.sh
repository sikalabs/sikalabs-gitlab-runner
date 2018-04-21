#!/bin/sh

GITLABCI_URL=https://gitlab.sikahq.com/
GITLABCI_TOKEN=${GITLABCI_TOKEN:-$1}
RUNNER_NAME=$(hostname)

docker exec -ti gitlab-runner gitlab-ci-multi-runner register \
   --non-interactive \
   --url $GITLABCI_URL \
   --registration-token $GITLABCI_TOKEN \
   --name $RUNNER_NAME \
   --executor docker \
   --docker-pull-policy if-not-present \
   --docker-image docker:git \
   --docker-cap-add=SYS_ADMIN \
   --docker-volumes '/var/run/docker.sock:/var/run/docker.sock' \
   --docker-volumes '/builds:/builds'


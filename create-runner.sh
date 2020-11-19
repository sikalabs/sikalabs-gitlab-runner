#!/bin/sh

docker run -d \
    --name gitlab-runner \
    --restart always \
    -v /etc/gitlab-runner:/etc/gitlab-runner \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /builds:/builds \
    gitlab/gitlab-runner:latest

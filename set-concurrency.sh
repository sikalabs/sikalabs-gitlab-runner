#!/bin/sh

N=${1:-8}

docker exec  gitlab-runner sed -i "s+concurrent = 1+concurrent = $N+g" /etc/gitlab-runner/config.toml


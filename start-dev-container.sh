#!/bin/bash

export DOCKER_GATEWAY_HOST=$(hostname -I | sed 's/^[ \t]*//;s/[ \t]*$//')
echo "Machine running docker:" $DOCKER_GATEWAY_HOST
docker-compose up
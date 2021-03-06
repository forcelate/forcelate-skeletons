#!/usr/bin/env bash

COMPANY=forcelate
APP=vuejs-nginx
TAG=latest
SPRING_BOOT_PROFILE=prod

docker stop ${APP}

docker pull ${COMPANY}/${APP}:${TAG}

docker run -d -it -p 8484:8484 \
  -v /root/app/logs:/root/app/logs \
  -e SPRING_BOOT_PROFILE=${SPRING_BOOT_PROFILE} \
  --rm --name ${APP} ${COMPANY}/${APP}:${TAG}

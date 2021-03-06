#!/usr/bin/env bash

COMPANY=forcelate
APP=spring-boot
TAG=dev

mvn clean install
docker build -t ${COMPANY}/${APP}:${TAG} .

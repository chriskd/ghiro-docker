#!/bin/bash

docker-compose down && \
docker rmi tornabene/ghiro:latest basilkh/mongodb2 postgres:9.5 --force && \
docker volume rm ghiro-docker_ghiro-pg ghiro-docker_ghiro-mongo ghiro-docker_ghiro-data

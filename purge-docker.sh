#!/usr/bin/env bash

docker container prune \
  && docker volume prune \
  && docker image prune

#!/usr/bin/env bash

git fetch --all \
  && git checkout master \
  && git merge --ff origin master

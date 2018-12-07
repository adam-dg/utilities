#!/usr/bin/env bash

DRUSH_ENV="$1"
drush "@${DRUSH_ENV}" rr --no-cache-clear \
  && drush "@${DRUSH_ENV}" updb -y \
  && drush "@${DRUSH_ENV}" en -y master \
  && drush "@${DRUSH_ENV}" cc drush \
  && drush "@${DRUSH_ENV}" master-exec -y \
  && drush "@${DRUSH_ENV}" cc all \
  && drush "@${DRUSH_ENV}" cc drush \
  && drush "@${DRUSH_ENV}" fl

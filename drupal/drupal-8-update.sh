#!/usr/bin/env bash

DRUSH_ENV="$1"
drush "@${DRUSH_ENV}" cr \
  && drush "@${DRUSH_ENV}" updb -y \
  && drush "@${DRUSH_ENV}" updb -y --entity-updates \
  && drush "@${DRUSH_ENV}" cim sync -y

#!/usr/bin/env bash

script_args=$@
script_path=$(dirname $0)
working_dir=$(pwd)

image="wodby/drupal-php:7.1-2.4.5"
if [ ! -z "$1" ]; then
  image="$1"
fi

docker run -ti -v ${working_dir}:/var/www/html -w /var/www/html ${image} /bin/bash

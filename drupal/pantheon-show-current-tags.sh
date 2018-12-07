#!/usr/bin/env bash

echo "Current pantheon live: $(git tag -l | fgrep -i pantheon_live_ | cut -d '_' -f3 | sort -n | tail -n1)";
echo "Current pantheon test: $(git tag -l | fgrep -i pantheon_test_ | cut -d '_' -f3 | sort -n | tail -n1)";

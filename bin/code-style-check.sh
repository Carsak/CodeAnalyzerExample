#!/usr/bin/env bash
files=$(git diff --name-only HEAD master --diff-filter=MARC)

if [ -n "$files" ]; then
  vendor/bin/phpcs "$files"
else
  echo 'files is empty'
fi

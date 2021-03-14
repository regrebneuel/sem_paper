#!/usr/bin/env bash

## autobuild.sh: automatically rebuild mansucript outputs and the webpage when content changes
## Depends on watchdog https://github.com/gorakhargosh/watchdog

watchmedo shell-command \
  --wait \
  --command='BUILD_DOCX=true bash build/build.sh && manubot webpage' \
  content

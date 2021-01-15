#!/bin/sh

printf "Volume: %s" "$(amixer sget Master | awk -F"[][]" '/Mono:/ { print $2 }')"

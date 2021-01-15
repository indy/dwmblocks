#!/bin/sh

if test "$(amixer sget Master | awk -F' ' '/Mono:/ { print $6 }')" = "[on]"
then
    # audible
    printf "Audio: %s" "$(amixer sget Master | awk -F"[][]" '/Mono:/ { print $2 }')"
else
    # muted
    printf "Muted     "
fi

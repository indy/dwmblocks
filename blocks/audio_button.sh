#!/bin/sh
case $1 in
    1) amixer sset 'Master' 5%- ;;
    2) amixer -D pulse set Master 1+ toggle ;;
    3) amixer sset 'Master' 5%+ ;;
esac

# signal dwm block 1 (audio) to update
sigdwmblocks 1

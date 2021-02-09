#!/usr/bin/env bash

diskspace() {
    df -h | grep ${1-} | awk '{print $1 ": " $3, "(" $5 " of " $2")"}'
}

case $HOSTNAME in
  (theseus) diskspace ^/dev/sdc2;;
  (dellboy) echo "Oops, bar? Are you kidding?";;
  (*)   printf "unknown hostname for diskfree.sh";;
esac

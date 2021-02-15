#!/usr/bin/env bash
uptime | sed -n -e 's/^.*load average: /CPU load: /p'

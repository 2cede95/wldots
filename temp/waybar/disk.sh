#!/bin/sh

location=${1:-/home}
[ -d "$location" ] || exit

df -h "$location" | awk ' /[0-9]/ {print $3 "/" $2}'

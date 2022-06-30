#!/bin/bash

printf "%s\n" "$(df -h "/" | awk ' /[0-9]/ {print $4}')"

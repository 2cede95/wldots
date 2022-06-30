#!/bin/bash

sensors | awk '/Core 0/ {printf"%i\n", $3}'

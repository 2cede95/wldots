#!/bin/sh

free --mebi | sed -n '2{p;q}' | awk ' {printf("%2.2f\n"), (($2-$7)/1024)}'

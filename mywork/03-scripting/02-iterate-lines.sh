#!/bin/bash

set -e

while read line; do
   echo $line;
   # sleep1;
done < guids.list

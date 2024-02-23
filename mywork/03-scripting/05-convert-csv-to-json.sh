#!/bin/bash

/Users/josephhudson/opt/anaconda3/bin/jq --slurp --raw-input --raw-output \
  'split("\n") | .[1:] | map(split(",")) |
      map({"id": .[0],
   	   "fname": .[1],
           "lname": .[2],
           "email": .[3],
           "ipv4": .[5]})' \
  mock_data.csv > mock_data.json
	   

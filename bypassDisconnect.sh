#!/bin/bash

trap "exit" SIGINT

while true :
do
  ~/Desktop/setupStream.sh
  echo "some crash"
dont

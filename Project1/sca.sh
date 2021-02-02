#!/bin/bash

if  ! command cppcheck > /dev/null; then
    echo "Eroor: cppcheck is not installed, Can not continue."
    exit
fi

if [ ! -d "report" ]; then
     echo "report folder not exist, creating it"
     mkdir "report"
  fi 

cppcheck --enable=all --force -q --xml --suppress=missingInclude --output-file="report"/sca.xml device/*

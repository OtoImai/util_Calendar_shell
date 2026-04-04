#!/bin/bash

isLeapYear() {
  local year=$1
  if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0 ) )); then
    return 0
  else
    return 1
  fi
}


#!/bin/bash

mo2nday() {
  local year=$1
  local m=$2
  case "$m" in
    1|01)  echo 31 ;;
    2|02)
      if isLeapYear "$year"; then
        echo 29
      else
        echo 28
      fi
    ;;
    3|03)  echo 31 ;;
    4|04)  echo 30 ;;
    5|05)  echo 31 ;;
    6|06)  echo 30 ;;
    7|07)  echo 31 ;;
    8|08)  echo 31 ;;
    9|09)  echo 30 ;;
    10)    echo 31 ;;
    11)    echo 30 ;;
    12)    echo 31 ;;
  esac
}

#!/bin/bash

mo2mmm() {
  local m=$1
  case "$m" in
    1|01)  echo jan ;;
    2|02)  echo feb ;;
    3|03)  echo mar ;;
    4|04)  echo apr ;;
    5|05)  echo may ;;
    6|06)  echo jun ;;
    7|07)  echo jul ;;
    8|08)  echo aug ;;
    9|09)  echo sep ;;
    10)    echo oct ;;
    11)    echo nov ;;
    12)    echo dec ;;
  esac
}

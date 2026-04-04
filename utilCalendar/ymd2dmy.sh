#!/bin/bash

# yyyy-mm-dd to ddmmmyyyy
# 2023-07-15 to 15jul2023

ymd2dmy() {
	local ymd=$1
	local year=${ymd:0:4}
	local mo=${ymd:5:2}
	local dd=${ymd:8:2}
  local mmm
	
	mmm=$(mo2mmm "$mo")
	echo "${dd}${mmm}${year}"
}

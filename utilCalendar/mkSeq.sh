#!/bin/bash

mkSeq() {
	local SDATE="$1"
	local EDATE="$2"
	local d

	d="$SDATE"
	while [ "$d" != "$(date -I -d "$EDATE + 1 day")" ]; do
		echo "$d"
		d=$(date -I -d "$d + 1 day")
	done 
}

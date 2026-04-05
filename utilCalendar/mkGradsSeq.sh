#!/bin/bash

mkGradsSeq() {
	local SDMY="$1"
	local EDMY="$2"
	
	local SYMD
	local EYMD

	SYMD=$(dmy2ymd "$SDMY")
	EYMD=$(dmy2ymd "$EDMY")
	
	mkSeq "$SYMD" "$EYMD" | while read d; do
		ymd2dmy "$d"
	done
}

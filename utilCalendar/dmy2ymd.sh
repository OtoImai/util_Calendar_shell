#!/bin/bash

dmy2ymd() {
	local dmy=$1
	local day=${dmy:0:2}
	local mmm=${dmy:2:3}
	local year=${dmy:5:4}
	local month

	month=$(mmm2mo "$mmm") 
	echo "$year-$month-$day"
}

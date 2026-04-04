#!/bin/bash

DIR="$(dirname "${BASH_SOURCE[0]}")/utilCalendar"

ordered_files=(
  "isLeapYear.sh"
  "mo2mmm.sh"
  "mmm2mo.sh"
  "mo2nday.sh"
)

for f in "${ordered_files[@]}"; do
    filepath="$DIR/$f"
    if [[ -f "$filepath" ]]; then
				echo "$f"
        source "$filepath"
    else
        echo "Error: $filepath not found!" >&2
        exit 1
    fi
done


for f in "$DIR"/*.sh; do
    base=$(basename "$f")
    [[ " ${ordered_files[*]} " =~ " $base " ]] && continue

    if [[ -f "$f" ]]; then
				echo "$base"
        source "$f"
    else
        echo "Warning: $f not found, skipping." >&2
    fi
done

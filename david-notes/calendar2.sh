#!/bin/bash

handle_event() {
  printf '%s\t' "${content[SUMMARY]}"; echo
}

declare -A content=( ) # define an associative array (aka map, aka hash)

while IFS=: read -r key value; do
  value=${value%$'\r'} # remove DOS newlines
  if [[ $key == END && $value == VEVENT ]]; then
    handle_event
    content=( )
  else
    content[${key%%";"*}]=$value
  fi
done

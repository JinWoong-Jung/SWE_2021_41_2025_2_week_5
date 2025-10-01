#!/bin/bash

for file in files/*; do

    filename=$(basename "$file")

    first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')

    if [[ -d "$first_char" ]]; then
        mv "$file" "$first_char/"
    fi

done

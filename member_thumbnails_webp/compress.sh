#!/bin/bash

for image in $(cat './list.txt'); do
    if [[ $(identify -format "%w" "$image") -ge 2000 || $(identify -format "%h" "$image") -ge 2000 ]]; then
        convert "$image" -quality 95 -resize 1200 -sampling-factor 4:4:4 -filter Lanczos "${image::-4}.webp"
    fi
done

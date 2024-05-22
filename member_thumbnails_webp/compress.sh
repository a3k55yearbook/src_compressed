#!/bin/bash

for image in $(cat './list.txt'); do
	convert "$image" -quality 85 -resize 1200 -sampling-factor 4:4:4 -filter Lanczos "${image::-4}.webp"
done

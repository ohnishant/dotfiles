#!/bin/bash

filename=$(date +%Y-%m-%d_%T).png
filepath_suffix="/tmp/femboybeauty_"$filename

echo $filepath_suffix

xclip -selection clipboard -t image/png -o > $filepath_suffix

filepath_prefix="file=@"
full_filepath=$filepath_prefix$filepath_suffix

res=$(curl "https://femboy.beauty/api/upload" -F $full_filepath)
# Print full response for deleteing and other links
echo "$res" | jq .

link=$(echo $res | jq -r '.link')
echo -n $link | xclip -selection clipboard

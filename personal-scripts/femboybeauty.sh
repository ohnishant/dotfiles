#!/bin/bash


# file=$1

thunar $HOME/Pictures/screenshots/ &

echo "Enter file path: "
read file

filepath_prefix="file=@"
filepath=$filepath_prefix$file

echo $filepath

curl "https://femboy.beauty/api/upload" -F $filepath | jq .

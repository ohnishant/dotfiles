#!/bin/bash


# file=$1

xdg-open $HOME/Pictures/screenshots/ &
THUNAR_PID=$!

echo "Enter file path: "
read file

filepath_prefix="file=@"
filepath=$filepath_prefix$file

echo $filepath

curl "https://femboy.beauty/api/upload" -F $filepath | jq .

echo "killing thunar with PID" $THUNAR_PID
pkill -9 nautilus

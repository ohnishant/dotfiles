flameshot_res=$(flameshot gui --clipboard 2>&1)


len=$(echo ${#flameshot_res})

if [ $len -ne 0 ]; then
	echo $flameshot_res
	notify-send "Did not take screenshot"
	exit 1
else
	echo "Screeshot successful"
	# TODO: some logic to check if the image uplaod was successful
	femboybeauty
	notify-send "Image URL sent to clipboard successfully"
	exit 0
fi

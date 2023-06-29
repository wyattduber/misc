#!/bin/bash

cd <removed>

ver="$( echo paper-1.19.4-* )"
if [[ "$ver" == "paper-1.19.4-\*.jar" ]]
then
	echo "Paper Jar not Detected! Exiting."
	return
fi
ver=${ver:13:3}
origver=$ver

while :
do
	echo "Checking for a newer version than paper-1.19.4-$ver.jar..."
	(( ver++ ))
	$(wget -q -O paper-1.19.4-$ver.jar https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/$ver/downloads/paper-1.19.4-$ver.jar)
	if [[ ! -s paper-1.19.4-$ver.jar ]]
	then
		echo "Version paper-1.19.4-$ver.jar not found! Saving paper-1.19.4-$(($ver-1)).jar..."
		mv paper-1.19.4-$origver.jar oldpaper/
		(( ver-- ))
		mv oldpaper/paper-1.19.4-$ver.jar .
		chmod +x paper-1.19.4-$ver.jar
		rm paper-1.19.4-$(($ver+1)).jar
		break
	fi
	mv paper-1.19.4-$ver.jar oldpaper/
	echo "Paper Version paper-1.19.4-$ver.jar downloaded."
done

rm <removed>/paper-auto.log
echo "Updated Paper from version $origver to $ver ($((ver-origver)) versions upgraded) on $(date)." > <removed>/paper-auto.log

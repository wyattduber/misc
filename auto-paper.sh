#!/bin/bash

cd /home/AMP/.ampdata/instances/McMyAdmin01/Minecraft/

ver="$( echo paper-1.19.3-* )"
if [[ "$ver" == "paper-1.19.3-\*.jar" ]]
then
	echo "Paper Jar not Detected! Exiting."
	return
fi
ver=${ver:13:3}
origver=$ver

while :
do
	echo "Checking for a newer version than paper-1.19.3-$ver.jar..."
	(( ver++ ))
	$(wget -q -O paper-1.19.3-$ver.jar https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/$ver/downloads/paper-1.19.3-$ver.jar)
	if [[ ! -s paper-1.19.3-$ver.jar ]]
	then
		echo "Version paper-1.19.3-$ver.jar not found! Saving paper-1.19.3-$(($ver-1)).jar..."
		mv paper-1.19.3-$origver.jar oldpaper/
		(( ver-- ))
		mv oldpaper/paper-1.19.3-$ver.jar .
		chmod +x paper-1.19.3-$ver.jar
		rm paper-1.19.3-$(($ver+1)).jar
		break
	fi
	mv paper-1.19.3-$ver.jar oldpaper/
	echo "Paper Version paper-1.19.3-$ver.jar downloaded."
done

rm /home/AMP/paper-auto.log
echo "Updated Paper from version $origver to $ver ($((ver-origver)) versions upgraded) on $(date)." > /home/AMP/paper-auto.log

#!/bin/bash

cd <removed>
rm Geyser-Spigot.jarDIS
mv Geyser-Spigot.jar Geyser-Spigot.jarDIS
wget -O Geyser-Spigot.jar https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/spigot/build/libs/Geyser-Spigot.jar
chown AMP:AMP Geyser-Spigot.jar
chmod 770 Geyser-Spigot.jar

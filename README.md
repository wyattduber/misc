# auto-paper.sh

This is a script that I wrote to autodownload paper.jar files from the [PaperMC Repo](https://papermc.io) and remove existing ones and place them in a seperate folder. This is to be run every day (or as often as you want to update).

# canvas-scraper

Check the documentation in it's folder for more details.

# geyser.sh

This is a script that I wrote to automate the downloading of the latest geyser-spigot.jar build. This is because geyser updates and I can't often update my server every day, and it gets the latest jar before the server restarts so that bedrock clients can ontinue to join with minimalized delay. This works very similarly to the `auto-paper.sh` file.

# PlaytimeTransfer.java

This is a script that I wrote that converts playtime from the `playtime` table in the cmi.sqlite.db file to the `PlayTime` column in the `users` table. I wrote this because CMI stores playtime in two different areas, and if the server is reset, then playtime in the `users` table is lost but playtime is still stored in in the `playtime` table. This adds it all up in it's current form and copies it over. 

# TrinityText

Check the documentation in it's folder for more details.

# vigenere.py

This is a script that I wrote for my cryptography class at ISU. I was quite proud of it, so I stored it here. It basically can input a vigenere cipher and then crack it and display it in plaintext.

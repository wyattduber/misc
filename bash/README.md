# auto-paper.sh

This is a script that I wrote to autodownload paper.jar files from the [PaperMC Repo](https://papermc.io) and remove existing ones and place them in a seperate folder. This is to be run every day (or as often as you want to update).

# geyser.sh

This is a script that I wrote to automate the downloading of the latest geyser-spigot.jar build. This is because geyser updates and I can't often update my server every day, and it gets the latest jar before the server restarts so that bedrock clients can ontinue to join with minimalized delay. This works very similarly to the `auto-paper.sh` file.

# a.sh

This is a script that I wrote to combine all of my ssh aliases into one file, easy to access when I pull up a terminal. I have all of the aliases configured in the ~/.ssh/config so that I could techincally just do `ssh ea` by hand, but I like this menu version more. 

# update-purpur.sh

This is a script that I wrote to automatically download the latest version of purpur and replace the existing verison. It will simply download a new file to a temp directory, then check if it is different from the existing one, and replace it if it is. Then it will log all info or errors to a log file in the same directory, appending to the top of the file for readability

# take-backup.sh

This is a script that I wrote to automatically save a backup of a server directory daily and then send a webhook message with the file size and alerting that the file was ready for download by the target server. The target server will use an scp request to download the file and send it's own webhook messages, seen in the download-backup.sh file

# download-backup.sh

This is a script that I wrote to automatically download a backup of a server directory daily and send a message to a discord webhook first when it starts downloading the file, then another one with the file size and a link to download it once the download finishes.

#!/bin/bash

# First, declare the webhook url variable to use at start and end of script
export WEBHOOK_URL="https://discord.com/api/webhooks/<removed>/<removed>"

# Send a message to discord channel letting it know that the backup has started.
curl -H "Content-Type: application/json" \
-d "{\"username\": \"AMP\", \"content\": \"Backup Started Downloading to Wcash's Cloud Server at $(date).\"}" \
$WEBHOOK_URL

# Move to cloud server folder
cd <removed>/files/Wyatt/Backups/ea-prod-server

# Download backup from the remote server
scp -i /root/.ssh/id_ea_root <removed>@<removed>:<removed>/backups/prod/prod-backup.tar.gz .

# Change ownership of the object to the www-data user for nextcloud to have access to it
chown www-data:www-data prod-backup.tar.gz

# Force a nextcloud scan for the item to be logged onto the site and the databases
sudo -u www-data <removed> files:scan -vvvv --path=<removed>files/Wyatt/Backups/ea-prod-server

# Finally, send a message to discord to let us know that the backup was successful
curl -H "Content-Type: application/json" \
-d "{\"username\": \"AMP\", \"content\": \"Backup successfully uploaded to Wcash's Cloud Server at $(date). [Download](https://cloud.wyattduber.com/s/<removed>). File Size is $(numfmt --to=iec-i --suffix=B --format=%.3f $(stat --printf='%s' <removed>/files/Wyatt/Backups/ea-prod-server/prod-backup.tar.gz))\"}" \
$WEBHOOK_URL

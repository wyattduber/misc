#!/bin/bash

# Take the actual backup
tar -cvzf <removed>/backups/prod/prod-backup.tar.gz <removed>/.ampdata/instances/Production01/Minecraft/

# Change ownership to amp for scp reasons
chown amp:amp <removed>/backups/prod/prod-backup.tar.gz

# Write to a file when the backup was finished
echo "Finished at: $(date)" > <removed>/backups/prod/finished-time.txt

# Finally, send a message to discord to let us know that the backup was successful
export WEBHOOK_URL="https://discord.com/api/webhooks/<removed>/<removed>"

curl -H "Content-Type: application/json" \
-d "{\"username\": \"AMP\", \"content\": \"Backup finished at  $(date). Waiting for download. File Size is $(numfmt --to=iec-i --suffix=B --format=%.3f $(stat --printf='%s' <removed>/backups/prod/prod-backup.tar.gz))\"}" \
$WEBHOOK_URL

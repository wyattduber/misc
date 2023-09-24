#!/bin/bash

# Specify the directory where the current JAR is stored
target_dir=" ## REMOVED ##"

# Specify the URL from which the JAR file should be downloaded
jar_url="https://api.purpurmc.org/v2/purpur/1.20.1/latest/download"

# Temporary directory to store the downloaded JAR
tmp_dir=$(mktemp -d)

# Name of the JAR file
jar_name="purpur.jar"

# Download the latest JAR to temporary directory
wget -O "$tmp_dir/$jar_name" $jar_url

# Check if download was successful
if [ $? -ne 0 ]; then
    {
      echo -e "Failed to download the JAR file. $(date)\n"
      cat error.log
    } > temp.log && mv temp.log error.log

    exit 1
fi

# Check if the JAR file already exists in the target directory
if [ -f "$target_dir/$jar_name" ]; then
    # Compare the new JAR with the existing one
    diff "$tmp_dir/$jar_name" "$target_dir/$jar_name" > /dev/null

    # If they are different, replace the old JAR with the new one
    if [ $? -ne 0 ]; then
        {
          echo -e "New version found. Updating... $(date)\n"
          cat info.log
        } > temp.log && mv temp.log info.log
        mv "$tmp_dir/$jar_name" "$target_dir/$jar_name"
    else
        {
          echo -e "No new version available. $(date)\n"
          cat info.log
        } > temp.log && mv temp.log info.log
    fi
else
    # If JAR doesn't exist in target directory, move the new JAR there
    {
      echo -e "No existing version found. Installing new version... $(date)\n"
      cat info.log
    } > temp.log && mv temp.log info.log
    mv "$tmp_dir/$jar_name" "$target_dir/$jar_name"
fi

# Remove temporary directory
rm -r "$tmp_dir"

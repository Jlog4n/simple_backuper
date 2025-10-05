#!/bin/bash

BACKUP_DIR="/home/user/backups"    # REPLACE "user" WITH YOUR USERNAME
SOURCE_DIR="/home/user/documents"  # REPLACE "user" WITH YOUR USERNAME
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Creating backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successfully created: $BACKUP_NAME"
else
    echo "Something went wrong!"
    exit 1
fi

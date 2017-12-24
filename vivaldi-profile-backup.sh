#!/bin/bash
#
# Author: WernerFP
# License: GPL
# Source: https://github.com/WernerFP/vivaldi-profile-backup.sh
# Script to backup Vivaldi browser profiles.

# Please enter an existing destination directory for your backup:
BACKUP_DIR="$HOME/Backup"
# The other parts run automatically ...
if [[ ! -d "$BACKUP_DIR" ]]; then
	echo "Destination directory was not found."
	exit
fi
# Vivaldi stable backup
DATE=$(date +%Y-%m-%d-%H%M%S)
SOURCE="$HOME/.config/vivaldi/Default"
SOURCE_FR="$HOME/.config/vivaldi/First Run"
if [[ -d "$SOURCE" ]]; then
	tar -hcvzpf $BACKUP_DIR/vivaldi-backup-$DATE.tar.gz $SOURCE "$SOURCE_FR"
else
	FAIL="No existing Vivaldi profile directory found."
	SOURCE=""
fi
# Vivaldi snapshot backup
SOURCE="$HOME/.config/vivaldi-snapshot/Default"
SOURCE_FR="$HOME/.config/vivaldi-snapshot/First Run"
if [[ -d "$SOURCE" ]]; then
	tar -hcvzpf $BACKUP_DIR/vivaldi-snapshot-backup-$DATE.tar.gz $SOURCE "$SOURCE_FR"
elif [[ ! -z "$FAIL" ]]; then
	echo "$FAIL"
fi

# vivaldi-profile-backup.sh

A small bash script to backup Vivaldi browser profiles in Arch Linux. The script should work just as well with other Linux distributions.

The script checks for existing profiles of Vivaldi Stable or Vivaldi Snapshot and saves them in a compressed tar archive.

The backup destination directory can be set in this variable:
```
BACKUP_DIR="$HOME/Backup"
```

The script handles Vivaldi browser profiles in these directories:
```
~/.config/vivaldi/
~/.config/vivaldi-snapshot/
```

If Vivaldi profiles are moved to a different location and there is only a symlink of the profile directory in `~/.config`, the files to which the symlink points will be saved.

Profiles created with `--user-data-dir` at a different location are ignored by the script.

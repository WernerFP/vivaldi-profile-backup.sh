A small bash script for backing up your personal Vivaldi profiles in Arch Linux. The script should work just as well with other Linux distributions.

The script checks for existing profiles of Vivaldi Stable or Vivaldi Snapshot and saves them in a compressed tar archive.

If you have moved your Vivaldi profile to a different location and there is only a symlink of the profile in ~/.config, the files to which the symlink points will be saved.

# Bash shell script to transfer a local project to the remote server

## Simple script to synchronize projects on the remote server.

### How to use
Place the ```sync.sh``` file in the root of the local directory
Customize 'username', 'remote_path' and 'local_path' and copy script to the target directory. Running over terminal with ```sh sync.sh```.

### :bangbang: Be careful with the path to the remote server
The sync.sh script syncs the local directory with the --delete --force command and therefore deletes all existing content.
If only new files and directories are to be uploaded and existing files are to be updated when changes are made, then ```--delete --force``` must be deleted in the command.

### Dependency
'rsync' must be installed on the server
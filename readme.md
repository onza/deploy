# Simple script to synchronize projects on the remote server.

## How to use
Place the sync.sh file in the root of the local directory
Customize 'username', 'remote_path' and 'local_path' and copy script to the target directory. Running over terminal with ```sh sync.sh```.

:bangbang: Be careful with the path to the remote server. The sync.sh script syncs the local directory with the --delete --force command and therefore deletes all existing content.


### Dependency
'rsync' must be installed on the server
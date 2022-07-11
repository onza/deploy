# Bash shell script to sync local project to a remote server

### How to use

Place the ```deploy.sh``` file in the local project directory and adjust 'username', 'remote_path' and 'local_path'. Add files/directories to 'excludestr' that should not be mounted on the remote server.

Run ```sh deploy.sh```.

#### :bangbang: Be careful with the path to the remote server

The script syncs the local project with ```--delete --force``` and deletes any inconsistent files and directories on the remote server. If you only want to deploy the changes then delete ```--delete --force``` from the script.

### Dependency

'rsync' must be installed on the remote server.

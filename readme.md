# Very simple deployment script for small projects and teams without testing.

### The Bash Script is suitable for projects in which only the live server should be synchronized with the local version.

## How to use
customize 'username', 'remote_path' and 'local_path' and copy script to the target directory. Running over terminal with ```sh deploy.sh```.

The list of ignored files is currently adapted to projects with a TYPO3 provider extension and can also be customized.


### Dependency
'rsync' must be installed on the server

### ToDo´s
* versioning
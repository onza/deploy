#!/bin/bash

# deploy script: customize variables and run 'sh deploy.sh'
username="[username]@[host]"
remote_path="/absolute/path/to/destination/project_directory_name/"

local_path="./"

excludestr="
  --exclude '.vscode'
  --exclude '.DS_Store'
  --exclude 'deploy.sh'
  --exclude '.git'
  --exclude '.gitignore'
  --exclude 'gulpfile.js'
  --exclude 'package.json'
  --exclude 'package-lock.json'
  --exclude 'node_modules'
"

cmd="rsync -avz --delete --force $excludestr -e ssh $local_path ${username}:${remote_path}"
echo $cmd
eval $cmd
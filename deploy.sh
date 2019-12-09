#!/bin/bash

# deploy script: customize username and remote_path and copy script to the target directory. running over terminal with "sh deploy.sh"
showMenu() {
  echo "                       "
  echo "Please select from menu"
  echo "---------------"

  echo "p: Passwort setzen"
  echo "d: Skript deployen"
  echo "x: beenden"
  echo "---------------"

  read -n 1 selection 

  echo 
  echo "Your selection was '$selection'"
  echo

  case "$selection" in
    p) setPassword
       showMenu ;;
    d) deploy
       showMenu ;;
    x) echo Exit ;;
    *) echo Unknown command
       showMenu ;;
  esac
}

setPassword() {
  echo Set password 
  read -s password
  echo new password is stored 
}

deploy() {
  echo Deploy skript
  if [ -z "$password" ]
  then
    setPassword
  fi

  username="[username]@[host]"
  remote_path="/absolute/path/to/destination/project_directory/typo3conf/ext/"

  # customize name of the target directory, e.g. the typo3 provider extension
  local_path="../[provider_extension]"
  excludestr="--exclude 'package.json' --exclude 'package-lock.json' --exclude '.git' --exclude '.gitignore' --exclude '.vscode' --exclude '.DS_Store' --exclude 'mf_provider/node_modules' --exclude 'gulpfile.js' --exclude '*/Resources/Template/Scss' --exclude 'deploy.sh'"

  cmd="rsync -avz --delete --force $excludestr -e ssh $local_path ${username}:${remote_path}"
  cmd2="rsync -avn $excludestr -e ssh $local_path ${username}:${remote_path}"
  echo $cmd
  echo $password | eval $cmd2
  # eval $cmd
}
showMenu


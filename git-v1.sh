#!/bin/bash

# Creating the databases
cd x86_64
sh update_repo.sh

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

#read input
input="update"

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push -u origin main

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"

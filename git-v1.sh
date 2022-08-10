#!/bin/bash

readonly arch=( "x86_64" "i386" )

# Create symlink for packages in 'any' architecture
for f in ./any/*.pkg.tar.*; do
    for a in "${arch[@]}"; do
        cd "${a}"
        ln -s ../"${f}" "$(basename ${f})"
        cd ..
    done
done

# Creating the databases
for m in "${arch[@]}"; do
    cd $m
    sh update_repo.sh
    cd ..
done

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

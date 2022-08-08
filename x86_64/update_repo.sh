#!/bin/bash

rm yuunix_aur*

echo "repo-add"
repo-add -n -R yuunix_aur.db.tar.gz *.pkg.tar.zst
sleep 5

echo "####################################"
echo "Repo Updated!!"
echo "####################################"

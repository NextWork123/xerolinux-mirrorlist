#!/bin/bash

echo "Deleting the work folder if it exists"
[ -d work ] && rm -rf work

# Backup everything inside the project folder
git add --all .

# Prompt for a commit comment
read -p "Write your commit comment: " input

# Commit to the local repository
git commit -m "$input"

# Push local files to GitHub
git push -u origin main

echo "Git Push Done"

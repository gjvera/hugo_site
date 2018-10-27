#!/bin/bash
echo -e "\033[0;32mDeploying Updates to Github...\033[0m"
hugo
msg="rebuilding site `date`"
git add .
git commit -m "msg" .
git push -f origin master 
cd public
git add .
msg="rebuilding site `date`"

git commit -m "$msg" .

git push -f origin master

echo ""

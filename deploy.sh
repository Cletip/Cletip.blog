#!/bin/bash

# Usage : ./deploy.sh

echo "Commit message :"
read commit

git add .

git commit -m "$commit"

git push origin master

hugo -d ../<Cletip.github.io>

cd ../<Cletip.github.io>

git add .

git commit -m "$commit"

git push origin master

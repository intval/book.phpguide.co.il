#!/bin/bash

echo -e "publish.sh\n.gitignore" > .gitignore

git init .
git add .
git commit -a -m "deploying to gh-pages"
git remote add target git@github.com:intval/book.phpguide.co.il.git
git push --force target master:gh-pages
rm -rf ./.git
rm -f .gitignore
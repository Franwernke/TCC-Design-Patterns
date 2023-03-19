#!/usr/bin/env sh

cd docs

# abort on errors
set -e

# build
yarn run build

# navigate into the build output directory
cd src/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# deploying to https://Franwernke.github.io/TCC-Design-Patterns
git push -f git@github.com-Franwernke:/Franwernke/TCC-Design-Patterns.git master:gh-pages

cd -
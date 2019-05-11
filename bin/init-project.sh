#!/usr/bin/env bash

script_dir=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
boilerplate_dir=$(dirname "$script_dir")/boilerplate
project_name=$(basename "$(readlink -f .)")
github_token=$(gpg -d ~/secure/travis-github.token.gpg)

echo "Boilerplate Location: $boilerplate_dir"
echo "Project Location:     "$(readlink -f .)
sleep 2

set -v
cp -rv "$boilerplate_dir" .
travis enable
travis env set GITHUB_TOKEN $github_token
git init
git add .
git commit -m "initital"
hub create
git push -u origin master
set +v

echo "Done! "
echo "- Travis: https://travis-ci.org/paulll/$project_name"
echo "- Github: https://github.com/paulll/$project_name"
echo "- Result: https://paulll.cc/$project_name"
echo
echo "Useful commands:"
echo " - parcel serve ./views/*.pug"
echo " - travis status"

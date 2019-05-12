# PPS Boilerplate
*(Parcel Pug Stylus) Boilerplate*

Simple boilerplate for web applications, with:
- `pug` as html template engine 
- `stylus` as css preprocessor
- `parcel` as resource bundler and build system
- `git` as vcs
- `travis-ci` auto building and deploying to `github pages`

## Installation

1. install parcel (npm), [travis](https://github.com/travis-ci/travis.rb), [hub](https://github.com/github/hub)
2. [create](https://github.com/settings/tokens) personal access token with public_repo scope
3. save token locally and encrypt it (`gpg -c`)
4. create symlink to `bin/init-project.sh` from any directory in `$PATH` (`~/bin` in my case, for example)
5. edit `bin/init-project.sh`:
    - change `~/secure/travis-github.token.gpg` to gpg-encrypted token file
    - change `paulll.cc` to your github pages domain (basically %username%.github.io)

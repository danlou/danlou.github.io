#!/usr/bin/env bash
PELICAN_DIR="/Users/danlou/projects/pelican-blog/"
GHPAGES_DIR="/Users/danlou/projects/danlou.github.io/"

cd $PELICAN_DIR
pelican content -s publishconf.py
rsync -a --remove-source-files output/* $GHPAGES_DIR
cd $GHPAGES_DIR
git add .
git commit -m 'Pelican output'
git push origin master

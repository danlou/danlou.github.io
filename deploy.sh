#!/usr/bin/env bash
PELICAN_DIR="~/projects/pelican-blog/"
GHPAGES_DIR="~/projects/danlou.github.io/"

cd $PELICAN_DIR
pelican content -s publishconf.py
mv output/* $GHPAGES_DIR
cd $GHPAGES_DIR
git add .
git commit -m 'Pelican output'
git push origin master

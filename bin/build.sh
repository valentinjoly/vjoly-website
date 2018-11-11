#!/usr/bin/env bash

# Rebuild site
JEKYLL_ENV=production bundle exec jekyll build

# Commit
git commit -a -m "Rebuilt _site"

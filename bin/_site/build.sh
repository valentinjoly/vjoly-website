#!/usr/bin/env bash

# Rebuild site
JEKYLL_ENV=production bundle exec jekyll build

# Commit
git add _site
git commit -m "Rebuilt _site"

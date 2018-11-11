# Delete master branch
git branch -D master

# Create new master branch and switching to it"
git checkout -b master

# Force the _site subdirectory to be project root
git filter-branch --subdirectory-filter _site/ -f

# Switch back to source branch
git checkout source

# Push all branches to origin
git push --all origin

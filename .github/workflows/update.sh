#!/bin/bash

# Check last commit message
#last_commit_msg=$(git log -1 --pretty=%B)
#if [[ $last_commit_msg =~ "[CI]" ]]; then
#	exit 0
#fi

# Install mdbook
cargo install mdbook

# Rebuild documents
mdbook build

# Push to the blog repository
git config --global user.name "miidas"
git config --global user.email "67558797+miidas0@users.noreply.github.com"
git add docs
git commit -m "[CI] Rebuild documents"
git push

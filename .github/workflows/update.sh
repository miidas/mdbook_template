#!/bin/bash

# Install mdbook
wget https://github.com/rust-lang/mdBook/releases/download/v0.4.0/mdbook-v0.4.0-x86_64-unknown-linux-gnu.tar.gz
tar -zxvf mdbook-v0.4.0-x86_64-unknown-linux-gnu.tar.gz

# Rebuild documents
./mdbook build

# Push to the blog repository
git config --global user.name "miidas"
git config --global user.email "67558797+miidas0@users.noreply.github.com"
git add docs
git commit -m "[CI] Rebuild documents"
git push

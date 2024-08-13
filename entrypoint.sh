#!/bin/bash

echo "_____________________"

git config --global user.name "${GITHUB_ACTION}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/dzemic.py

git add -A && git commit -m "Update from action"

git push --set-upstream origin main

echo "_____________________"

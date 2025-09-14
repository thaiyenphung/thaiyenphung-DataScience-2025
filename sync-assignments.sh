#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/prof-course"
git fetch origin
git checkout main
git pull
cd ..
rsync -av --delete prof-course/Assignments/ Assignments/
git add Assignments
git commit -m "Sync Assignments from instructor"
git push origin main

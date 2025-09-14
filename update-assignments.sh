#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

CACHE_DIR="_cache/prof-course"
SRC_REPO="https://github.com/rugbyprof/3603-Programming-for-Data-Science.git"
DEST_DIR="Assignments"

mkdir -p "_cache"
if [ -d "$CACHE_DIR/.git" ]; then
  git -C "$CACHE_DIR" fetch origin
  git -C "$CACHE_DIR" checkout -q main || git -C "$CACHE_DIR" checkout -q -B main
  git -C "$CACHE_DIR" reset --hard origin/main
else
  git clone --depth=1 "$SRC_REPO" "$CACHE_DIR"
  git -C "$CACHE_DIR" checkout -q main || git -C "$CACHE_DIR" checkout -q -B main
  git -C "$CACHE_DIR" reset --hard origin/main
fi

mkdir -p "$DEST_DIR"
rsync -av --delete "$CACHE_DIR/Assignments/" "$DEST_DIR/"

git add "$DEST_DIR"
if ! git diff --cached --quiet; then
  git commit -m "Pulled latest assignments from prof"
  git push origin main
else
  echo "No changes to commit. Already up to date."
fi

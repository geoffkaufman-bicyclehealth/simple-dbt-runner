#!/bin/bash
set -e

# try to get the manifest from the gh-pages branch
if ! git checkout gh-pages -- docs/manifest.json; then
  echo "Failed to get manifest.json from gh-pages branch"
  exit 1
fi

# create the target directory if it doesn't exist
if [ ! -d "project_goes_here/target" ]; then
  mkdir project_goes_here/target
fi

# copy the manifest.json to the target directory
cp docs/manifest.json project_goes_here/target/manifest.json
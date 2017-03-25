#! /usr/bin/env bash

set -e

git remote add deploy git@github.com:mimimalizam/mimimalizam.github.io.git
git push deploy master

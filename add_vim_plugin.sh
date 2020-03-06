#!/bin/bash

set -e

cd "$(dirname $0)"

repo_path=${1:?"missing plugin repo path"}
repo="$(basename $repo_path)"

git submodule add \
        "https://github.com/${repo_path}.git" \
        "vim/.vim/pack/_/start/${repo}"

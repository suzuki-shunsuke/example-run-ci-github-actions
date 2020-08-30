#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

if [ "$GITHUB_REF" != refs/heads/master ]; then
  exit 0
fi

ghc exec -- run-ci update-pr --base master

#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

echo hello
test ! -f hello.txt || cat hello.txt

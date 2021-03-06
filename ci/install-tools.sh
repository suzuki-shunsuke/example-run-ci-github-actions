#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

CLAP_VERSION=v0.2.2
GITHUB_COMMENT_VERSION=v1.9.0
# RUN_CI_VERSION=v0.1.0-0

sudo curl --fail -L -o /usr/local/bin/clap https://github.com/suzuki-shunsuke/clap/releases/download/${CLAP_VERSION}/clap_${CLAP_VERSION##v}_linux_amd64
sudo chmod a+x /usr/local/bin/clap

sudo clap install "https://github.com/suzuki-shunsuke/github-comment/releases/download/${GITHUB_COMMENT_VERSION}/github-comment_${GITHUB_COMMENT_VERSION##v}_linux_amd64.tar.gz" github-comment:/usr/local/bin/github-comment
sudo chmod a+x /usr/local/bin/github-comment
github-comment exec -- sudo ln -s /usr/local/bin/github-comment /usr/local/bin/ghc

# ghc exec -- clap install "https://github.com/suzuki-shunsuke/example-run-ci-circleci/releases/download/${RUN_CI_VERSION}/run-ci_${RUN_CI_VERSION}_linux_amd64.tar.gz" run-ci:/usr/local/bin/run-ci
ghc exec -- sudo curl --fail -L -o /usr/local/bin/run-ci https://github.com/suzuki-shunsuke/example-run-ci-circleci/releases/download/local-build/run-ci-linux
ghc exec -- sudo chmod a+x /usr/local/bin/run-ci

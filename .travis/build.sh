#!/bin/bash

set -o errexit

export CFLAGS="-Werror"

make unit-tests

$HOME/gopath/bin/goveralls -coverprofile=coverage-all.out -service=travis-ci || true

exit 0

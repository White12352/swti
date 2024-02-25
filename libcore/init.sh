#!/bin/bash
set -e

[[ -e "inited" ]] && exit 0

# Install gomobile
if [ ! -f "$GOPATH/bin/gomobile" ]; then
	go install -v -trimpath -ldflags="-w -s" github.com/sagernet/gomobile/cmd/gobind@v0.1.3
	go install -v -trimpath -ldflags="-w -s" github.com/sagernet/gomobile/cmd/gomobile@v0.1.3
fi

gomobile init
touch inited

#!/bin/sh
set -ex

# get goversioninfo to bind icon.ico to the executable
go get github.com/josephspurrier/goversioninfo/cmd/goversioninfo
# get pony to populate the bin folder with dependencies and resources
go get github.com/mat007/pony/cmd/pony
# invoke goversioninfo and pony
go generate
# build the demo application in the bin folder
cd bin && go build -ldflags -H=windowsgui ..

@rem get goversioninfo to bind icon.ico to the executable
go get github.com/josephspurrier/goversioninfo/cmd/goversioninfo
@rem get pony to populate the bin folder with dependencies and resources
go get github.com/mat007/pony/cmd/pony
@rem invoke goversioninfo and pony
go generate
@rem build the demo application in the bin folder
pushd bin & go build .. & popd

#/bin/bash

# requirement for macOS
brew install grpcurl go

# requirement for go
go mod init protocol
bash install-protobuf.sh
bash install-googleapis.sh


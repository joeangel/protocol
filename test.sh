#/bin/bash

# test: list api
grpcurl -import-path ./ -proto ./api/api.proto describe

# test: get node info
grpcurl -import-path ./ -proto ./api/api.proto -plaintext grpc.trongrid.io:50051 protocol.Wallet.GetNodeInfo


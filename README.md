# protocol [![Build Status](https://travis-ci.org/tronprotocol/protocol.svg?branch=master)](https://travis-ci.org/tronprotocol/protocol)


# The protocol of Tron including api and message.

The protocol is an independent project. You can use it for building other application.

java-tron, wallet-cli and grpc-gateway

git subtree pull --prefix src/main/protos/ protocol master

## Run the included *.sh files to initialize the dependencies

# Test on macOS grpcurl

## Auto install and run the test

```shell
bash install.sh
bash test.sh
```

## Requirement on macOS

homebrew

```shell
brew install grpcurl go
```

go lang

```shell
go mod init protocol
bash install-protobuf.sh
bash install-googleapis.sh
```

## Test

List all api

```shell
grpcurl -import-path ./ -proto ./api/api.proto describe
```

Get Node Info `protocol.Wallet.GetNodeInfo`

```shell
grpcurl -import-path ./ -proto ./api/api.proto -plaintext grpc.trongrid.io:50051 protocol.Wallet.GetNodeInfo
```

# References

- The TRON Developer Hub
  - https://developers.tron.network/
- The latest protocol source code
  - https://github.com/tronprotocol/java-tron/tree/develop/protocol/src/main/protos


PROTO_DIR=proto
OUT_DIR=gen/go
PROTOC_GEN_GO=$(shell which protoc-gen-go)
PROTOC_GEN_GO_GRPC=$(shell which protoc-gen-go-grpc)

PROTO_FILES := $(shell find $(PROTO_DIR) -name '*.proto')

all: proto

proto:
	@echo "📦 Compiling protobuf files..."
	@mkdir -p $(OUT_DIR)
	protoc \
	  --proto_path=$(PROTO_DIR) \
	  --go_out=paths=source_relative:$(OUT_DIR) \
	  --go-grpc_out=paths=source_relative:$(OUT_DIR) \
	  $(PROTO_FILES)

.PHONY: all proto

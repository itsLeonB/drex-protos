PROTO_DIR=proto
OUT_DIR=gen/go

all: proto

proto:
	@echo "📦 Compiling protobuf files..."
	@mkdir -p $(OUT_DIR)
	buf generate

.PHONY: all proto

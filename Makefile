GOFMT=gofmt
GC=go build
VERSION:=$(shell git describe --always)
ARCH=$(shell uname -s)
DBUILD=docker build
DOCKER_NS ?= fisco-relayer
DOCKER_TAG=$(ARCH)-$(VERSION)

SRC_FILES = $(shell git ls-files | grep -e .go | grep -v _test.go)


fisco-relayer: $(SRC_FILES)
	$(GC) -o build/bin/fisco-relayer main.go

fisco-relayer-windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 $(GC) -o build/bin/fisco-relayer-windows.exe main.go

fisco-relayer-linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 $(GC) -o build/bin/fisco-relayer-linux main.go

fisco-relayer-darwin:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 $(GC) -o build/bin/fisco-relayer-darwin main.go

fisco-relayer-cross: fisco-relayer-windows fisco-relayer-linux fisco-relayer-darwin


format:
	$(GOFMT) -w main.go

images: Makefile
	@echo "Building fisco relayer docker image"
	@$(DBUILD) --no-cache -f docker/Dockerfile -t $(DOCKER_NS):$(DOCKER_TAG) .
	@docker tag $(DOCKER_NS):$(DOCKER_TAG) $(DOCKER_NS):latest
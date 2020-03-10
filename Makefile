NAME := cj
CGO_ENABLED = 0
GO := go
BUILD_TARGET = build
COMMIT := $(shell git rev-parse --short HEAD)
COVERED_MAIN_SRC_FILE=./main
PATH  := $(PATH):$(PWD)/bin

darwin:
	GO111MODULE=on CGO_ENABLED=$(CGO_ENABLED) GOOS=darwin GOARCH=amd64 $(GO) $(BUILD_TARGET) $(BUILDFLAGS) -o bin/darwin/$(NAME) $(MAIN_SRC_FILE)
	chmod +x bin/darwin/$(NAME)
	rm -rf $(NAME) && ln -s bin/darwin/$(NAME) cj

linux:
	GO111MODULE=on CGO_ENABLED=$(CGO_ENABLED) GOOS=linux GOARCH=amd64 $(GO) $(BUILD_TARGET) $(BUILDFLAGS) -o bin/linux/$(NAME) $(MAIN_SRC_FILE)
	chmod +x bin/linux/$(NAME)
	rm -rf $(NAME) && ln -s bin/linux/$(NAME) cj

check:
	./$(NAME) check

build:
	docker build . -t jenkins-zh:test
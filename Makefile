# GitHub Container Registry — requires: docker login ghcr.io
#
# Default PLATFORM=linux/amd64 so images built on Apple Silicon (arm64) run on
# typical Linux x86_64 servers. Override if needed: make push PLATFORM=linux/arm64
REGISTRY := ghcr.io
IMAGE := simonschneider/parplan
TAG := main
FULL_IMAGE := $(REGISTRY)/$(IMAGE):$(TAG)

DOCKER ?= podman
PLATFORM ?= linux/amd64

.PHONY: build push

build:
	$(DOCKER) build --platform $(PLATFORM) -t $(FULL_IMAGE) .

# Build and push in one invocation: `make push`
push: build
	$(DOCKER) push $(FULL_IMAGE)

# GitHub Container Registry — requires: docker login ghcr.io
REGISTRY := ghcr.io
IMAGE := simonschneider/parplan
TAG := main
FULL_IMAGE := $(REGISTRY)/$(IMAGE):$(TAG)

.PHONY: build push

build:
	podman build -t $(FULL_IMAGE) .

# Build and push in one invocation: `make push`
push: build
	podman push $(FULL_IMAGE)

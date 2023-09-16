DOCKER_IMAGE_NAME := "nekonenene/mojo"

.PHONY: build
build:
	source .env && docker build -t ${DOCKER_IMAGE_NAME} --build-arg modular_auth=$${MODULAR_AUTH} .

.PHONY: run
run:
	docker run -it --rm -v $$(pwd):/app ${DOCKER_IMAGE_NAME}:latest

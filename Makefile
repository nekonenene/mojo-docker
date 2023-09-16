DOCKER_IMAGE_NAME := "mojo_image1"

.PHONY: build
build:
	source .env && docker build -t ${DOCKER_IMAGE_NAME} --build-arg modular_auth=$${MODULAR_AUTH} .

.PHONY: run
run:
	docker run -it --rm ${DOCKER_IMAGE_NAME}

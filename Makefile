VERSION = $(shell git describe --always --tags)
IMAGE = docker-devops
BINARY = docker-devops

build:
	docker-compose build
up:
	docker-compose up -d
down:
	docker-compose down
clean:
	rm -rf $(BINARY)
	docker rmi -f $(shell docker images -f "dangling=true" -q) 2> /dev/null; true

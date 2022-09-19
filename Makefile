export
NODE_ENV="test"

DEFAULT_DOCKER_CMD = "'npm run start'"

.PHONY: lint

all: lint test build

lint:
	DEFAULT_DOCKER_CMD="npm run lint" \
    docker-compose up

test:
	@echo "testing"
	DEFAULT_DOCKER_CMD="npm run test" \
	docker-compose up

run:
	@echo "running app"
	NODE_ENV="develop" \
	docker-compose up

build:
	@echo "Transpiling Typescript.."
	DEFAULT_DOCKER_CMD="npm run build" \
	docker-compose up

deploy:
	@echo "Docker push command will go here";
	make build

clean:
	@echo "All the cleanup goes here"

export
NODE_ENV="production"

DEFAULT_DOCKER_CMD = "npm start"

.PHONY: lint

all: lint test build

lint:
	DEFAULT_DOCKER_CMD="npm run lint" \
	docker-compose up --remove-orphans

test:
	@echo "testing"
	docker-compose build
	DEFAULT_DOCKER_CMD="npm run test" \
	docker-compose up --remove-orphans

run:
	@echo "running app"
	docker-compose build
	NODE_ENV="develop" \
	DEFAULT_DOCKER_CMD="npm run start" \
	docker-compose up --remove-orphans

# run as daemon process for example api server
run-d:
	@echo "running app as daemon process"
	docker-compose build 
	DEFAULT_DOCKER_CMD="npm run start:daemon" \
	docker-compose up --remove-orphans

build-w:
	@echo "Transpiling Typescript with watch mode.."
	DEFAULT_DOCKER_CMD="npm run build:watch" \
	docker-compose up --remove-orphans

build:
	@echo "Transpiling Typescript.."
    docker-compose build
	DEFAULT_DOCKER_CMD="npm run build" \
	docker-compose up --remove-orphans

deploy:
	@echo "Docker push command will go here";
	make build

clean:
	@echo "All the cleanup goes here"

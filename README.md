# NodeJS Typescript Boiler Plate

### What is included?
- Latest Nodejs with Typescript, Eslint, Preetier
- Build, Run, Test Nodejs inside docker container environment


### Example Commands:
```bash
make build
```
This will build the docker compose services. Then it will compile the Typescript files. If you change the Dockerfile of services then you need to build again.

```bash
make build-w
```
This will build the docker compose services. Then it will compile the Typescript files in watch mode. whenever the files get's changed the Typescrip files will be re-compiled. If the service is running with PM2 then service will be updated as well since PM2 is also working in watch mode.

```bash
make run
```
This will run the src/main.ts code after compiling/transpiling using node.

```bash
make run-d
```
This will run dist/main.js as daemon service with PM2. Specially recommended for http service.

```bash
make lint
```
This will run eslint to meet code styling.







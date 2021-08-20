# Node / Express / Docker Hello World

## Startup

### Without Docker

```bash
node index.js
```

Equivalent:

```bash
npm run start
```

Test:

```
curl localhost:3000
```

Or navigate browser to <http://localhost:3000>.

### With Docker

From repo root run:

```bash
docker build -t my-container-name .
docker run -p 4123:3000 -d my-container-name
```

Equivalent:

```
npm run docker
```

Test:

```
curl localhost:4123
```

Or navigate browser to <http://localhost:4123>.

## Core Concept

```txt
┌─────┐            ┌─────────┐          ┌───────┐
│Image├──(build)──►│Container├──(run)──►│Process│
└─────┘            └─────────┘          └───────┘
```

## Useful Commands

```bash
# List images
docker images

# Remove an image
docker image rm my-image-name

# List running containers
docker container ls

# List all containers
docker container ls -a

# Remove container
# `a75f2` represents the container ID
docker container rm a75f2

# List processes (running containers)
docker ps

# Kill process
# `a75f2` represents the container ID
docker kill a75f2
```

## References

- [How to use the Node Docker image](https://github.com/nodejs/docker-node/blob/main/README.md#how-to-use-this-image)
- [Dockerfile commands reference](https://docs.docker.com/engine/reference/builder/)
- [`docker build` command reference](https://docs.docker.com/engine/reference/commandline/build/)
- [`docker run` command reference](https://docs.docker.com/engine/reference/commandline/run/)

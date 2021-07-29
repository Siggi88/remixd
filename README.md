# Remixd-docker

The Dockerfile allows one to build an image that runs remixd.

## Build the image
```
docker build . --tag remixd
```
## Run it
```
docker run --rm -dt -v/path/to/your/solidity/project:/app -p65520:65520 remixd -s /app
```

When the container is successfully started, it can be used to make files from the local file system available in the remix IDE (https://remix.ethereum.org).

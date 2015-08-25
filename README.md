# flexget container

simple docker image based on phusion/baseimage that runs flexget to collect torrents.

## config
### makefile
- image-name: name of image to build
- container-name: name of container to run
- torrents-path: volume on host where torrents will be downloaded to
- flexget-path: volume on host where flexget-db, config.yml etc will be (usually . or ~/.flexget)

## makefile tasks
- clean: stop and remove the container
- build: build a new image
- run: run a new detached container with specified port and volumes mounted
- peek: open bash in container
- iter: all of the above

## out of scope
a more detail explanation of usage

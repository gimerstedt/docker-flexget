image-name = flexget
container-name = $(image-name)

flexget-path = /home/ake1/docker/docker-flexget
torrent-path = /mnt/big-sata/torrents

build:
	docker build -t $(image-name) .

run:
	docker run -d --name $(container-name) \
	-v $(flexget-path):/root/.flexget \
	-v $(torrent-path):/torrents \
	$(container-name)

clean:
	-docker stop $(container-name)
	-docker rm $(container-name)

peek:
	docker exec -it $(container-name) /bin/bash

iter: clean build run peek

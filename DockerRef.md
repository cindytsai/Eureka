# Docker

## Docker command line

* Build an image
```
sudo docker build -t="<REPOSITORY>:<tag>" <Dockerfile_Path> .
```

* Run an image
```
docker run -it <REPOSITORY>:<tag>
```

* Check the container
```
docker ps -a
```

* Check the output log from docker
```
docker logs <CONTAINER_ID or NAMES>
```

* New tag
```
docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
```

* Push to docker hub
```
docker push <REPOSITORY>:<tag>
```

## Dockerfile


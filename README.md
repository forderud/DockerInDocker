# DockerInDocker
Docker-in-docker (dind) experiments within the GEHC network

## Working sample
Run the DinD container in privileged mode:
```
docker run -d --privileged --name mydind gehc-dind
```

Access the DinD container's shell:
```
docker exec -it mydind sh
```

Run Alpine container from within DinD container:
```
docker run --rm alpine echo "Hello from Docker inside Docker!"
```

Stop DinD container to clean up:
```
docker stop mydind
docker rm mydind
```


## Links
* [Docker in Docker](https://hub.docker.com/_/docker) (commonly known as "dind")
* GitLab [Use Docker to build Docker images](https://docs.gitlab.com/ci/docker/using_docker_build/)
* ~~Sintef [Setup your own dind-GitLab runner](https://sintef.pages.sintef.no/docs/docs.wiki/Setup-your-own-dind-GitLab-Runner.html)~~

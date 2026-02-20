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
* [How To Run Docker in Docker Container [3 Easy Methods]](https://devopscube.com/run-docker-in-docker/)
* DockerCon 2023: [Docker-in-Docker: Containerized CI Workflows](https://youtu.be/JyEwKm-OfxA?si=iCzvrC74hiWTqdvo)
* GitLab [Use Docker to build Docker images](https://docs.gitlab.com/ci/docker/using_docker_build/)
* ~~Sintef [Setup your own dind-GitLab runner](https://sintef.pages.sintef.no/docs/docs.wiki/Setup-your-own-dind-GitLab-Runner.html)~~

Docker-in-docker (DinD) and Docker-out-of-Docker (DooD) samples.


## Links
* Official [Docker in Docker](https://hub.docker.com/_/docker) images (commonly known as "dind")
* https://docs.docker.com/guides/zscaler/
* [How To Run Docker in Docker Container [3 Easy Methods]](https://devopscube.com/run-docker-in-docker/)
* DockerCon 2023: [Docker-in-Docker: Containerized CI Workflows](https://youtu.be/JyEwKm-OfxA?si=iCzvrC74hiWTqdvo)

### GitLab CI usage
* GitLab [Use Docker to build Docker images](https://docs.gitlab.com/ci/docker/using_docker_build/)
* https://oneuptime.com/blog/post/2026-01-16-docker-in-docker-dind/view
* ~~Sintef [Setup your own dind-GitLab runner](https://sintef.pages.sintef.no/docs/docs.wiki/Setup-your-own-dind-GitLab-Runner.html)~~

### Docker cleanup commands
* Clean up containers: [`docker container prune --force`](https://docs.docker.com/reference/cli/docker/container/prune/)
* Clean up volumes: [`docker volume prune --force`](https://docs.docker.com/reference/cli/docker/volume/prune/)
* Clean local images: [`docker image prune --force`](https://docs.docker.com/reference/cli/docker/image/prune/)
* Clean build cache: [`docker builder prune --force`](https://docs.docker.com/reference/cli/docker/builder/prune/)
* Clean up networks with routing tables: [`docker network prune --force`](https://docs.docker.com/reference/cli/docker/network/prune/)

Clean up everything: [`docker system prune`](https://docs.docker.com/reference/cli/docker/system/prune/)

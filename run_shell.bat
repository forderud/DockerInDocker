:: Open an interactive bash shell inside the container

:: Docker-in-Docker (DinD):
:: TODO: Propagate TLS certificates to container
:: --network=host
:: -e DOCKER_TLS_CERTDIR=/certs
docker run -d --privileged --name dind-instance docker:dind
docker exec -it dind-instance sh
::docker exec -it dind-instance sh -c "docker pull alpine:latest"
docker rm --force dind-instance

:: Docker-out-of-Docker (DooD):
::docker run -v /var/run/docker.sock:/var/run/docker.sock --rm -it docker:cli sh

:: Command to check if docker daemon is running:
:: docker info

:: Command to check for local docker daemon:
:: ps aux

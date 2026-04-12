:: Open an interactive bash shell inside the container

docker run --privileged --rm -it docker:dind sh
::docker run -v /var/run/docker.sock:/var/run/docker.sock --rm -it docker:cli sh

:: Commands to check if docker daemon is running (doesn't seem to work):
:: docker info
:: ps aux

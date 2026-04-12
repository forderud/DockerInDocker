:: Open an interactive bash shell inside the container

docker run --rm -it docker:dind sh
::docker run --rm -it docker:cli sh

:: Commands to check if docker daemon is running (doesn't seem to work):
:: docker info
:: ps aux

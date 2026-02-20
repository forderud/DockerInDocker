@echo off

echo Building custom docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause


echo Testing Docker-in-Docker...

:: Docker-in-Docker (DinD) mode (doesn't work)
::docker network create dind-network
:: Fails with "ERROR: failed to connect to the docker API at tcp://docker:2375: lookup docker on 192.168.65.7:53: no such host"
::set DOCKER_PARAMS=--privileged --network dind-network -e DOCKER_TLS_CERTDIR=/certs -v daemon-certs-ca:/certs/ca -v daemon-certs-client:/certs/client
:: -e DOCKER_HOST=tcp://dind:2375 -v /certs/client -p 2375:2375
::docker run %DOCKER_PARAMS% --rm -it gehc-dind sh
::docker run %DOCKER_PARAMS% --rm -it gehc-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

echo "Starting DinD container..."
docker run -d --privileged --name mydind gehc-dind

echo "Connecting to DinD container..."
docker exec -it mydind sh
::docker exec -it mydind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

echo "Stopping DinD container..."
docker stop mydind
docker rm mydind

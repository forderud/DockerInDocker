@echo off

::echo "Testing Ubuntu image build..."
::docker build -f Ubuntu-24.04.Dockerfile .
::pause

echo Building docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause


echo Testing Docker-in-Docker...

:: System-wide Docker-out-of-Docker (DooD) socket binding mode (works nicely)
set DIND_PARAMS=-v /var/run/docker.sock:/var/run/docker.sock

:: Docker-in-Docker (DinD) mode (doesn't work)
::docker network create dind-network
:: Fails with "ERROR: failed to connect to the docker API at tcp://docker:2375: lookup docker on 192.168.65.7:53: no such host"
::set DIND_PARAMS=--privileged --network dind-network -e DOCKER_TLS_CERTDIR=/certs -v daemon-certs-ca:/certs/ca -v daemon-certs-client:/certs/client:ro
:: -e DOCKER_HOST=tcp://dind:2375 -v /certs/client -p 2375:2375

::docker run %DIND_PARAMS% --rm -it gehc-dind sh
docker run %DIND_PARAMS% --rm -it gehc-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

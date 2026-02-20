@echo off

::echo "Testing Ubuntu image build..."
::docker build -f Ubuntu-24.04.Dockerfile .
::pause

echo Building docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause


echo Testing Docker-in-Docker...

:: Socket binding mode
set DIND_PARAMS=-v /var/run/docker.sock:/var/run/docker.sock
:: Docker-in-Docker (dind) mode
::set DIND_PARAMS=--privileged -e DOCKER_TLS_CERTDIR=/certs -v /certs/client

::docker run %DIND_PARAMS% --rm -it gehc-dind sh
docker run %DIND_PARAMS% --rm -it gehc-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

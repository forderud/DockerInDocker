@echo off

::echo "Testing Ubuntu image build..."
::docker build -f Ubuntu-24.04.Dockerfile .
::pause

::To investigate:
::* DOCKER_TLS_CERTDIR

echo Building docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause


echo Testing Docker-in-Docker...

set DIND_PARAMS=-v /var/run/docker.sock:/var/run/docker.sock
::set DIND_PARAMS=--privileged

::docker run %DIND_PARAMS% --rm -it gehc-dind sh

docker run %DIND_PARAMS% --rm -it gehc-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

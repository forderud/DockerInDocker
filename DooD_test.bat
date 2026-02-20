@echo off

echo Building custom docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause

echo Testing Docker-out-of-Docker...

:: System-wide Docker-out-of-Docker (DooD) socket binding mode (works nicely)
set DOCKER_PARAMS=-v /var/run/docker.sock:/var/run/docker.sock

::docker run %DOCKER_PARAMS% --rm -it gehc-dind sh
docker run %DOCKER_PARAMS% --rm -it gehc-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

@echo off

::echo "Testing Ubuntu image build..."
::docker build -f Ubuntu-24.04.Dockerfile .
::pause

::To investigate:
::* DOCKER_TLS_CERTDIR

echo "Building docker-in-docker image..."
docker build -t my-dind -f dind.Dockerfile .
::pause


echo "Testing Docker-in-Docker..."

::docker run --privileged --rm -it my-dind sh

:: ERROR: failed to connect to the docker API at tcp://docker:2375: lookup docker on 192.168.65.7:53: no such host
docker run --privileged --rm -it my-dind sh -c "echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

::TLS test:
:: wget https://raw.githubusercontent.com/forderud/QtWasm/refs/heads/master/README.md

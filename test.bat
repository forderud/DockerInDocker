@echo off

::echo "Testing Ubuntu image build..."
::docker build -f Ubuntu-24.04.Dockerfile .
::pause

::To investigate:
::* DOCKER_TLS_CERTDIR

echo "Building docker-in-docker..."
docker build -t my-dind -f dind.Dockerfile .
::pause


::echo "Testing Docker-in-Docker..."
:: /usr/local/bin/docker
docker run --privileged --rm -it my-dind "sh"

::TLS test:
:: wget https://raw.githubusercontent.com/forderud/QtWasm/refs/heads/master/README.md

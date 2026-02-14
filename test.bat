@echo off

::echo "Testing Ubuntu image build..."
::docker build .
::pause

::To investigate:
::* DOCKER_TLS_CERTDIR

echo "Testing Docker-in-Docker..."
:: /usr/local/bin/docker
docker run --privileged --rm -it docker:dind "sh"

::TLS test:
:: wget https://raw.githubusercontent.com/forderud/QtWasm/refs/heads/master/README.md

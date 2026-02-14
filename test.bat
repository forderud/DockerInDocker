@echo off

::echo "Testing Ubuntu image build..."
::docker build .
::pause

echo "Testing Docker-in-Docker..."
:: /usr/local/bin/docker
docker run --privileged --rm -it docker:dind "sh"

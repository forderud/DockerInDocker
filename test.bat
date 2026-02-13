@echo off

::echo "Testing Ubuntu image build..."
::docker build .
::pause

echo "Testing Docker-in-Docker..."
docker run --privileged --rm -it docker:dind sh

pause

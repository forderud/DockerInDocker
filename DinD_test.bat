@echo off

echo Building custom docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause

echo Testing Docker-in-Docker...

echo Starting DinD container...
docker run -d --privileged --name dind-instance gehc-dind

echo Connecting to DinD container...
::docker exec -it dind-instance sh
docker exec -it dind-instance sh -c "sleep 2s; echo Trying to run docker..; docker build -f Ubuntu-24.04.Dockerfile ."

echo Stopping DinD container...
docker rm --force dind-instance

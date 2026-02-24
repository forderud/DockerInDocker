@echo off

echo Building custom docker-in-docker image...
docker build -t gehc-dind -f dind.Dockerfile .
::pause

echo Testing Docker-in-Docker...

echo Starting DinD container...
docker compose -f dind.compose.yaml up -d

echo Waiting for container to start...
:: TODO: Figure out how to get rid of this sleep step.
:: Sleeping until container is fully started to avoid: ERROR: failed to connect to the docker API at tcp://docker:2375: lookup docker on 192.168.65.7:53: no such host
docker exec -it dind-instance sh -c "until docker info > /dev/null; do sleep 1s; done"

echo Running DinD commands...
::docker exec -it dind-instance sh
docker exec -it dind-instance sh -c "docker build -f Ubuntu-24.04.Dockerfile ."

echo Stopping DinD container...
docker rm --force dind-instance

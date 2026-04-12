@echo off

echo Building DinD and DooD images with custom certificates...
copy /y ..\*.crt .

docker build --file docker-dind.Dockerfile --tag=forderud/docker:dind .
docker push forderud/docker:dind

docker build --file docker-cli.Dockerfile --tag=forderud/docker:cli .
docker push forderud/docker:cli

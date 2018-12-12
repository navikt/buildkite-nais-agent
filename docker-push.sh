
#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

DOCKER_IMAGE_NAME=naviktdocker/buildkite-nais-agent:latest

docker build . -t $DOCKER_IMAGE_NAME
docker push $DOCKER_IMAGE_NAME

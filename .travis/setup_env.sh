#!/bin/bash

echo "Unshallowing repo"
git fetch --unshallow
git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
git fetch origin

echo "Creating env file"
echo "export GIT_CHANGES=\$(git diff --name-only origin/master..HEAD)" >> .env

echo "Logging into Docker Hub"
if [[ -z "$DOCKER_USER" || -z "$DOCKER_PASSWORD" ]]; then
	echo "Docker credentials missing, cannot proceed"
	exit 1
fi

docker login -u "$DOCKER_USER" -p "$DOCKER_PASSWORD"

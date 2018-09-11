#!/bin/sh

DEFAULT_DOCKER_REPO_URL=https://docker.nsuslab.io
DEFAULT_DOCKER_EMAIL=devops-support@nsuslab.com

read -p "Docker repository URL [${DEFAULT_DOCKER_REPO_URL}]: " DOCKER_REPO_URL
if [ -z "$DOCKER_REPO_URL" ]
then
  DOCKER_REPO_URL="$DEFAULT_DOCKER_REPO_URL"
fi

while [ -z "$DOCKER_REPO_USER" ]
do
  read -p "Docker repository user (*required): " DOCKER_REPO_USER
done

while [ -z "$DOCKER_REPO_PASSWORD" ]
do
  read -p "Docker repository password of user '${DOCKER_REPO_USER}' (*required): " DOCKER_REPO_PASSWORD
done

read -p "Docker repository supporter email [${DEFAULT_DOCKER_EMAIL}]: " DOCKER_REPO_EMAIL
if [ -z "$DOCKER_REPO_EMAIL" ]
then
  DOCKER_REPO_EMAIL="$DEFAULT_DOCKER_EMAIL"
fi

set -x

kubectl create secret docker-registry regcred --docker-server="${DOCKER_REPO_URL}" --docker-username="${DOCKER_REPO_USER}" --docker-password="${DOCKER_REPO_PASSWORD}" --docker-email="${DOCKER_REPO_EMAIL}"

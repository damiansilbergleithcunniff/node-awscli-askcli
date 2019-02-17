#!/bin/bash

TAG=2.0.0.1
REPO=damiansilbergleithcunniff/node-awscli-askcli
COMMIT=`git rev-parse HEAD`

docker build -f Dockerfile -t $REPO:$COMMIT .
docker tag $REPO:$COMMIT $REPO:$TAG
docker push $REPO

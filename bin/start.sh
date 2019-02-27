#!/bin/sh
echo Starting...
cd src/api
dep ensure
cd ../..
docker-compose up --build

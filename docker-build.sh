#!/bin/sh

#Setting Versions
VERSION='1.0.0'

cd ..
./gradlew clean build -x test

ROOT_PATH=$(pwd)
echo "$ROOT_PATH"

echo 'api docker image build... Start'
cd "$ROOT_PATH"/initProject && docker build -t vamlin/init:$VERSION .
echo 'api docker image build... Finish'

echo 'api docker image push... Start'
docker push vamlin/init:$VERSION
echo 'api docker image push... Finish'
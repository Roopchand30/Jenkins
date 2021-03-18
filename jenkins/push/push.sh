#!/bin/bash
echo "*************"
echo "pushing image"
echo "**************"
IMAGE="mavenproj"
echo "====Logging in===="
docker login -u roopchand30 -p $PASS
echo "*****Tagging image****"
docker tag $IMAGE:$BUILD_TAG roopchand30/$IMAGE:$BUILD_TAG
echo "****Its time to push ***"
docker push roopchand30/$IMAGE:$BUILD_TAG

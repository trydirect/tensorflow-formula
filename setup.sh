#!/usr/bin/env bash

docker-compose -f v01/dockerfiles/docker-compose.yml up -d
COUNTER=0

while [ $COUNTER -lt 20 ] && [ -z $JUPYTER_TOKEN ]; do
    let COUNTER=COUNTER+1
    JUPYTER_TOKEN=$(docker-compose -f v01/dockerfiles/docker-compose.yml logs | egrep -o -m 1 '[a-f0-9]{48}')
    sleep 1
done

if [ -n $JUPYTER_TOKEN ]; then
    echo "Jupyter token: "$JUPYTER_TOKEN
else
    echo "Something went wrong. Failed to retrieve Jupyter token."
fi
#!/bin/bash

FILE=/src/.dev-container-initialized
if test -f "$FILE"; then
  echo "Container was previously initialized"
else 
  echo "Container initialization - start"
  /scripts/init.sh $FILE # Change init.sh for your initialization
  echo "Container initialization - finished"
fi


# Change launch.json to use IP of Docker host
sed -i -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'"$DOCKER_GATEWAY_HOST"'/g' /.vscode/launch.json

# Add / Change start command
SERVER=http://$DOCKER_GATEWAY_HOST:1234
echo Server running at $SERVER
echo HMR port: 1235
npx parcel /src/index.html --hmr-port 1235
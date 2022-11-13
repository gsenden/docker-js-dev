#!/bin/bash

FILE=/scripts/dev-container-initialized
if test -f "$FILE"; then
  echo "Container was previously initialized"
else 
  echo "Container initialization - start"
  /scripts/init.sh $FILE # Change init.sh for your initialization
  echo "Container initialization - finished"
fi

# Add / Change start command
SERVER=http://$DOCKER_GATEWAY_HOST:1234
echo Server running at $SERVER
npx parcel /src/index.html
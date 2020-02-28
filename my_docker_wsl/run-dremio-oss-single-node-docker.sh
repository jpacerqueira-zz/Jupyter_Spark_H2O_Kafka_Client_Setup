#!/usr/bin/env bash
#
DOCKERLS=$(docker ps | grep dremio_oss | awk -F' ' '{ print $15 }')
echo "$DOCKERLS"
#
if [[ $DOCKERLS != "dremio_oss" ]]; then
   docker run -p 9047:9047 -p 31010:31010 -p 45678:45678 dremio/dremio-oss --name dremio_oss
   echo "  wait 6 min "
   sleep 480
fi
#

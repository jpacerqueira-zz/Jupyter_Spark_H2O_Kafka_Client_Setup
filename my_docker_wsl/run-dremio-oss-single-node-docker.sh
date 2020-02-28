#!/usr/bin/env bash
#
DOCKERLS=$(docker ps | grep dremio_oss | awk -F' ' '{ print $15 }')
echo "$DOCKERLS"
#
if [[ $DOCKERLS != "dremio_oss" ]]; then
   docker run -itd -p 9047:9047 -p 31010:31010 -p 45678:45678 --cap-add=NET_ADMIN --name dremio_oss dremio/dremio-oss
   echo "  wait 1 min "
   sleep 61
fi
#

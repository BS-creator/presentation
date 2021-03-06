#!/bin/bash

echo
echo "docker run -it --rm \\ "
echo "  --link sidecar_proxy \\ "
echo "  tutum/curl \\ "
echo "  curl -X GET http://sidecar_proxy:15001/headers "
echo

# query the proxy
docker run -it --rm \
  --link sidecar_proxy \
  tutum/curl \
  curl -X GET http://sidecar_proxy:15001/headers

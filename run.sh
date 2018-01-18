#!/bin/bash

docker rm -f osm-tile-expirer
docker run -d -v $(pwd)/../data:/data --name osm-tile-expirer --network osm_network osm/tile-expirer
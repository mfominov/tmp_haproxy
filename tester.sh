#!/bin/bash
docker-compose up -d
haproxy_name=$(docker ps --format '{{.Names}}' | head -1)
for i in $( docker ps --format '{{.Image}}' | grep -v haproxy |cut -f2-4 -d"_" ); do
    docker exec $haproxy_name curl -f http://$i
done

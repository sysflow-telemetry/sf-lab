#!/bin/bash
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
sudo docker run \
    --privileged \
    --name=collector \
    -v /var/run/docker.sock:/host/var/run/docker.sock \
    -v /dev:/host/dev \
	-v /proc:/host/proc:ro \
	-v /boot:/host/boot:ro \
	-v /lib/modules:/host/lib/modules:ro \
    -v /usr:/host/usr:ro \
	-v /etc/:/host/etc:ro \
	-v /var/lib:/host/var/lib:ro \
    -v /data/rcos:/data \
    -e EXPORTER_ID=${HOSTNAME} \
    -e OUTPUT=/data/ \
    -e INTERVAL=30 \
    -e FILTER="" \
    --rm sysflowtelemetry/sf-collector:0.6.0

# Replace the empty FILTER with the  one below to filter events. Make sure that the name match the name of the container you are monitoring.
#-e FILTER="container.name=httpd" \


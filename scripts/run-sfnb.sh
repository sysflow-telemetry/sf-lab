#!/bin/bash
sudo docker run --rm -d --name sfnb \
    -e NB_USER=jovyan \
    --user root \
    -e CHOWN_HOME=yes \
    -e NB_UID=$(id -u) \
    -e NB_GID=$(id -g) \
    -e CHOWN_HOME_OPTS='-R' \
    -w /home/jovyan/ \
    -v $(pwd)/pynb:/home/jovyan/work \
    -v /data/rcos:/home/jovyan/work/data/rcos \
    -p 8888:8888 \
    ghcr.io/sysflow-telemetry/sfnb:0.5.1

#!/bin/bash
set -euo pipefail -x

for modpack in "rad2" "all-the-mods-8" "rlcraft"
do
    echo "Publishing ${modpack}"
    docker build -f Dockerfile.$modpack -t $modpack .
    docker tag rad2 otoman/mcmodpacks:${modpack}latest
    docker push otoman/mcmodpacks:${modpack}latest
done

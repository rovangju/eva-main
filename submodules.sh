#!/bin/bash

set -e

submodules=(
    docs/addons/cartesian_idex 
    docs/addons/fan-ducts 
    docs/addons/mgn15 
    docs/addons/probes 
    docs/addons/x_endstop 
    docs/drives/aero 
    docs/drives/bmg 
    docs/drives/bowden 
    docs/drives/hemera 
    docs/drives/titan
)
path=$(pwd)

for i in "${submodules[@]}"; do
    cd $i
    git add .
    git commit -m "bump version"
    git push origin main
    cd $path
done
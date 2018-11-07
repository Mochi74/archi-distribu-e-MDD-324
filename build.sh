#!/bin/bash
mkdir -p screenshots
rm -rf screenshots/*.png
decktape  --screenshots --screenshots-directory screenshots --screenshots-size 1920x1080 impress file://`pwd`/index.html?showPopover=true ipi-algo-001-cours.pdf
rm ipi-algo-001-cours.pdf
cd screenshots
convert `ls -1v` ../ipi-algo-001-cours.pdf
cd ..
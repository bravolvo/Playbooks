#!/bin/bash

wget -O miniconda.sh "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" && bash miniconda.sh -b -p /shared/.conda && /shared/.conda/bin/conda init

exit

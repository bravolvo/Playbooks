#!/bin/bash

wget -O miniconda.sh "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" && bash miniconda.sh -b -p /shared/.conda && /shared/.conda/bin/conda init

source .bashrc

conda create -c conda-forge -n sampling rdkit -y

conda activate sampling

cat >> requirements.txt <<EOF
numpy>=1.25
pandas>=2.0
rdkit>=2022.03
tqdm>=4.65
useful-rdkit-utils>=0.2.7
pillow>=9.5  # See discussion here https://github.com/python-pillow/Pillow/issues/6179#issuecomment-1673988403
jupyter
scikit-learn
seaborn
EOF

pip install -r requirements.txt

conda install jupyterlab -y

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/shared/.conda/envs/sampling/lib

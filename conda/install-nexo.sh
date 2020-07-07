#!/bin/sh

## bash install-nexo.sh <pathToExistingCondaInstall> ./nexo-python-env.yml


if [ -z "$1" ]
then	
	echo "Please provide a full path install directory"
	exit 1
fi

unset PYTHONPATH

curl -LO https://repo.anaconda.com/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh

bash ./Miniconda3-4.7.12.1-Linux-x86_64.sh -b -p $1
which python
export PATH=$1/bin:$PATH
which python

conda env create -n nexo -f $2

source $1/etc/profile.d/conda.sh
conda activate nexo



#!/usr/bin/env bash

# Set up training environment.
# Feel free to change these as required:
export AICROWD_DATASET_NAME=color_dsprites
export AICROWD_EVALUATION_NAME="PytorchVAE"$AICROWD_DATASET_NAME
#mpi3d_toy
#cars3d

# Change these only if you know what you're doing:
# Check if the root is set; if not use the location of this script as root
if [ ! -n "${NDC_ROOT+set}" ]; then
  export NDC_ROOT="$( cd "$(dirname "$1")" ; pwd -P )"
fi

if [ ! -n "${DATASETS+set}" ]; then
  echo 'The $DATASETS environment variable is not set'
fi

export PYTHONPATH=${PYTHONPATH}:${NDC_ROOT}
export AICROWD_OUTPUT_PATH=${NDC_ROOT}/scratch/shared
export DISENTANGLEMENT_LIB_DATA=$DATASETS
#!/bin/bash

#Establish current working directory
export CWD=$PWD

#Directory where scripts are located
export SCRIPT_DIR="$CWD/scripts"

#Directory containing output from get_observations.R
export FILE_DIR="$CWD/data/inaturalist"

#Directory to store SDM maps
export OUT_DIR="$CWD/inaturalist_sdm"

#Standard error/our
STDERR_DIR="$CWD/std-err"
STDOUT_DIR="$CWD/std-out"

#!/bin/bash

#PBS -W group_list=
#PBS -q standard
#PBS -l select=1:ncpus=4:mem=8gb
#PBS -l pvmem=7gb
#PBS -l walltime=24:00:00
#PBS -l cput=24:00:00
#PBS -M netid@email.arizona.edu
#PBS -m bea

#LOAD R
module load R

#MOVE INTO HPC-inaturalist-SDM
cd "$CWD"

#FOR TAXONOMY ID IN LIST, GET RESEARCH GRADE OBSERVATIONS
for id in $(cat list); do
  $SCRIPT_DIR/get-observation-data.R $id
done

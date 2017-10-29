#!/bin/bash

#PBS -W group_list=bhurwitz
#PBS -q standard
#PBS -l select=1:ncpus=4:mem=8gb
#PBS -l pvmem=7gb
#PBS -l walltime=15:00:00
#PBS -l cput=15:00:00
#PBS -M jamesthornton@email.arizona.edu
#PBS -m bea

module load R

#DIRECTORY CONTAINING get-observation-data script

cd "$CWD"

for id in $(cat list); do
  $SCRIPT_DIR/get-observation-data.R $id
done

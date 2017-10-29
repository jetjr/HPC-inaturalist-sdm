#!/bin/bash

#PBS -W group_list=bhurwitz
#PBS -q standard
#PBS -l select=1:ncpus=4:mem=8gb
#PBS -l pvmem=7gb
#PBS -l walltime=48:00:00
#PBS -l cput=48:00:00
#PBS -M jamesthornton@email.arizona.edu
#PBS -m bea

module load R

cd $FILE_DIR

ls *.txt > list

for file in $(cat list); do
 
  ID=$(basename $file | cut -d '-' -f 1)
  mkdir $OUT_DIR/$ID  

  $SCRIPT_DIR/run-sdm.R $file $ID $OUT_DIR/$ID 

done



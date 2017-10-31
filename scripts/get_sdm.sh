#!/bin/bash

#PBS -W group_list=
#PBS -q standard
#PBS -l select=1:ncpus=4:mem=8gb
#PBS -l pvmem=7gb
#PBS -l walltime=48:00:00
#PBS -l cput=48:00:00
#PBS -M netid@email.arizona.edu
#PBS -m bea

#LOAD R
module load R

#MOVE INTO DIRECTORY CONTAINING OBSERVATIONS
cd $FILE_DIR

#STORE ALL OBSERVATIONS FILES INTO LIST
ls *.txt > list

#FOR OBSERVATION FILE IN LIST, RUN SDM TO GENERATE MAPS
for file in $(cat list); do
 
  ID=$(basename $file | cut -d '-' -f 1)
  mkdir $OUT_DIR/$ID  

  $SCRIPT_DIR/run-sdm.R $file $ID $OUT_DIR/$ID 

done



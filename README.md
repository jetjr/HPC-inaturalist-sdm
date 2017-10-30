# HPC-inaturalist-sdm
Optimized for University of Arizona HPC Ocelote System. Code derived from Jeff Oliver. See https://github.com/jcoliver/ebutterfly-sdm for more information. 

## Instructions
    
    $ git pull https://github.com/jetjr/HPC-inaturalist-sdm.git

Dependencies (one time only): The R scripts used in this workflow use some packages that must be installed prior to executing this job. Do the following one time only:

    $ module load R
    $ R
    > install.packages("raster")
    #Select mirror if prompted
    > install.packages("sp")
    > install.packages("dismo")
    > install.packages("maptools")

Create a list of taxon ids to get observations and create SDMs in a file called "list". This "list" file should be stored in the root github directory.

    $ pwd
    /home/u1/jamesthornton/HPC-butterfly-sdm

    $ head list
    58505
    81559
    52773
    58521
    122363
    58469
    58475
    58513
    58481
    58507

Edit PBS variables in scripts/
 get_data.sh and get_sdm.sh files must be edited at line 3 and line to include the correct group list and email variables respectively. 

    $ pwd
    /home/u1/jamesthornton/HPC-butterfly-sdm
    $ cd scripts/
    $ vi get_data.sdm
    #PBS -W group_list=YOURGROUPLIST
    #PBS -M netid@email.arizona.edu

Ensure the above is completed for both get_data.sh and get_sdm.sh 

Submit the job

    $ ./submit

Output will be stored in inaturalist_sdm directory

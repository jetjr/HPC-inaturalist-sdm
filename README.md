# HPC-inaturalist-sdm
Optimized for University of Arizona HPC Ocelote System. Code derived from Jeff Oliver. See https://github.com/jcoliver/ebutterfly-sdm for more information. 

## Instructions
    
    $ git pull https://github.com/jetjr/HPC-inaturalist-sdm.git

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

Submit the job

    $ ./submit

Output will be stored in inaturalist_sdm directory

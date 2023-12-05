#!/bin/sh
#SBATCH --output R_job_%j.out
#SBATCH --error  R_job_%j.err
#SBATCH -N 1
#SBATCH -n 1

#SBATCH -p defq,defq-48core


echo -e '\n submitted R job'
echo 'hostname'
hostname

# load the module for R
module load R/gcc/4.3.1

# first test of .....
R < test.R --no-save


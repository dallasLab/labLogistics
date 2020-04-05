#!/bin/bash
#PBS -l nodes=1:ppn=16
#PBS -l walltime=72:00:00
#PBS -N rangeShape2
#PBS -o out.stdout
#PBS -e err.stderr
#PBS -q bigmem
#PBS -A hpc_fugazi
#PBS -m e 
#PBS -M tadallas@lsu.edu

module purge
module load openmpi
module load r/3.5.3/INTEL-18.0.1

R CMD BATCH --save rs.R out.Rout

ls 

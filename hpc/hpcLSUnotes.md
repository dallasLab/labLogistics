## Notes from HPC training (day 1)

3 clusters at hpc locally (superMike, Phillip)
Loni is the state-wide cluster
superMIC is national (xsede)



balance, showquota (two good shell commands for checking allocations)


### log ins
mike.hpc.lsu.edu
smic.hpc.lsu.edu (use this one preferentially)
philip.hpc.lsu.edu

compute nodes have 3 digits after name (mike123)


Just toss files into the home (default) folder. You can do this in a project folder too, but then you have to apply for a different allocation (stupid storage allocation). Work directory is good and doesn't have stupid space limits. However, files are purged after 60 days of non-use.


### modules
module avail
module load openmpi (maybe be needed for some parallel stuff in R)
module load r/3.5.3/
module purge (to remove the conflict bullshit)



#### node tpes

QB2 -- workq, checkpt, bigmem (3 day max) -- 20 cores except 48 for bigmem
single (7 days)--for single node jobs up to 8 cores

Mike, SuperMicII - workq, checkpt, bigmem, single (same as above)



|  name  |  cores | memory | walltime (h) |
|   --   |   --   |   --   |      --      |
| workq  | 16     | 32     |    72        |
| checkpt| 16     | 32     |    --        |
| bigmem | 16     | 256    |    48        |
| single | 16     |        |    72        |
| gpu    | 16     | 64     |    72        |





### queue stats
qstat -q
showq
qfree


### submit job
qsub -I -X -V \     ##-I is interactive -X graphix -V
 -l walltime=<hh:mm:ss>, nodes=<numNodes>:ppn=<numCores> \
 -A <Allocation> \
 -q <queue name>

e.g., qsub -I -l nodes=1:ppn=20 -l walltime=2:00:00 -q workq -A hpc_fugazi -N test

queen b 2 (qb2) ppn is always 20 for workq.


### check out quote
showquota


### submit batch job
qsub <batchjob.sh>


e.g. job script
#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=72:00:00
#PBS -N <name>
#PBS -o <outputFile>
#PBS -e <errorFile>
#PBS -q queueName
#PBS -A <allocation>
#PBS -m e (send email to me when job ends)
#PBS -M <emailAddress>

shell commands
load modules
open R
run shit
save output

ls     %put some throwaway shell command at end, as sometimes the job scheduler just ignores the last line of the file.













### job monitoring
qstat -n -u tadallas
qdel <jobID> (delete job)
checkjob <jobID>
qshow
showbf workq   (shows info on different node times -- basically an estimate of wait time after you submit a job)




Some path info for env vars if running code on multiple compute nodes
$PBS_NODEFILE
$PBD_O_WORKDIR






Compute |














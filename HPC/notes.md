# some notes about working with U of SC's HPC cluster 

[Account request is here](https://sc.edu/about/offices_and_divisions/division_of_information_technology/rc/account_request/index.php)


Once they approve the account, they'll send you an email with some instructions for logging in, and create a directory with a couple really short example jobs. Use the structure of the example jobs (`job.sh`) to call whatever code you want to run. Be sure to load the module that you need within that `job.sh` file (e.g., `module load R/gcc/4.3.1`).





## submit a job 

```
sbatch YOURJOB.sh

```



## Check on a job 

```
squeue -u YOURUSERNAME 
```





## Cancel a job
```
scancel JOBID
```




## See how backed up the USC HPC is and consider alternatives 

```
sacct -j JOBID -o submit -X --noheader | uniq
sacct -j JOBID -o start -X --noheader | uniq

```




### see what modules are available

```
module avail
```

`opencv` is on the cluster, so image tasks can be tossed towards the HPC if the wait time is not crazy long. 

`ffmpeg` is on the cluster, so video processing can be done there as well. 


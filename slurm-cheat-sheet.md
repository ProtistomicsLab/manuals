# **Slurm cheat sheet**

> [!NOTE]
> This is a cheat sheet meant for internal use on the BC CAS server Mole, its specific version of Slurm and its current hardware.  

## Running jobs

To queue a job using Slurm, use:

**`sbatch slurm-template.sh`** 

The `slurm-template.sh` is a configuration file containing the actual command(s) you want to run, and [it can be found here](https://github.com/ProtistomicsLab/manuals/blob/main/slurm-template.sh).

## Monitoring and managing jobs

To see all currently queued jobs:

**`squeue`**

To see all jobs currently queued by a specified user:

**`squeue -u username`**

To see the current availability of cores:

**`sinfo -O All | cut -f11,23 -d "|"`**

To cancel a queued job (jobID is its number shown in the first column of `squeue` output):

**`scancel jobID`** 

For more information on Slurm, see:
(https://slurm.schedmd.com/overview.html)

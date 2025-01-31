#!/bin/bash
#SBATCH -t 100:00:00
#SBATCH -J job_name
#SBATCH -n 8
#SBATCH -N 1
#SBATCH -w node1

module load example
for f in *.fasta; do example_script.py $f; done

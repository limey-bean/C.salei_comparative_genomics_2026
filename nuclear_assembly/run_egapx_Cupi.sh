#!/bin/bash
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --cpus-per-task=100
#SBATCH --mem=500GB
#SBATCH --time=48:00:00
#SBATCH --job-name=Cupi_egapx_test1
# %x=job-name %j=jobid
#SBATCH --output=./logs/%x_%j.txt
#SBATCH --mail-user=eguswa@uvm.edu
#SBATCH --mail-type=ALL



module load nextflow
module load apptainer

python3 /gpfs1/home/e/g/eguswa/scratch/egapx/egapx/ui/egapx.py /gpfs1/home/e/g/eguswa/scratch/egapx/egapx/spider_test/input_spider.yaml -o Cupi_test1_out -e singularity -lc ../local_cache


#!/bin/bash
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --mem=100G
#SBATCH --time=30:00:00
#SBATCH --job-name=get_organelle
# %x=job-name %j=jobid
#SBATCH --output=%x_%j.out.txt


module load apptainer
apptainer exec /gpfs1/home/e/g/eguswa/scratch/Containers/getorganelle_1.7.7.0.sif  get_organelle_from_reads.py -1 ~/Spider_brains/reads/trimmed_short_reads/short_reads.1_2.trim.fastq.gz -2 ~/Spider_brains/reads/trimmed_short_reads/short_reads.2_2.trim.fastq.gz -R 10 -k 21,45,65,85,105 -F animal_mt -o ~/Spider_brains/getorganelle/Csalei_mt_out_again

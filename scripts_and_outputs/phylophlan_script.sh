#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J Phylogeny
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se
source ~/.bashrc

#Load Module 
module load conda
export CONDA_ENVS_PATH=~/envs

source activate phylophlan

#Your Command

# Create variables
outdir=/home/prve5836/Genome_Analysis/Data/Data_DNA/Phylogeny
configs=~/envs/configs

cd $outdir

phylophlan -i input_metagenome -d phylophlan --diversity high -f $configs/supermatrix_aa.cfg


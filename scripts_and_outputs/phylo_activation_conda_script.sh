#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 10:00:00
#SBATCH -J Phylophlan_activation
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Setting up a conda environment to use phylophlan
​
module load conda
export CONDA_ENVS_PATH=~/envs
conda create -n "phylophlan" -c bioconda phylophlan=3.0
​
mkdir ~/envs/configs
​
source conda_init.sh

conda activate phylophlan
phylophlan_write_default_configs.sh ~/envs/configs
conda deactivate

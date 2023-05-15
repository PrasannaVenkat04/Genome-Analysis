#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load MetaBat

# Your commands
cd /home/prve5836/Genome_Analysis/Data/Data_DNA/

metabat2 -t 2 -i /home/prve5836/Genome_Analysis/Data/Data_DNA/Assembly_output/final.contigs.fa  -o /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output

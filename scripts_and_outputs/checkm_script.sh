#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 04:00:00
#SBATCH -J CheckM_QC
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load  CheckM/1.0.12

#Your code

checkm lineage_wf -t 4 -x fa --reduced_tree /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_evaluation

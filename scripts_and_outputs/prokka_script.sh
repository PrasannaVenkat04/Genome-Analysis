#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J Prokka_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# Your commands

prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_1 --prefix bin_1 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.1.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_2 --prefix bin_2 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.2.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_3 --prefix bin_3 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.3.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_4 --prefix bin_4 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.4.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_5 --prefix bin_5 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.5.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_6 --prefix bin_6 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.6.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_7 --prefix bin_7 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.7.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_8 --prefix bin_8 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.8.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_9 --prefix bin_9 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.9.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_10 --prefix bin_10 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.10.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_11 --prefix bin_11 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.11.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_12 --prefix bin_12 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.12.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_13 --prefix bin_13 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.13.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_14 --prefix bin_14 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.14.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_15 --prefix bin_15 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.15.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_16 --prefix bin_16 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.16.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_17 --prefix bin_17 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.17.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_18 --prefix bin_18 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.18.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_20 --prefix bin_20 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.20.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_21 --prefix bin_21 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.21.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_23 --prefix bin_23 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.23.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_24 --prefix bin_24 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.24.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_25 --prefix bin_25 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.25.fa
prokka --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_26 --prefix bin_26 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.26.fa

prokka --kingdom Archaea --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_19 --prefix bin_19 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.19.fa
prokka --kingdom Archaea --outdir /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation/bin_22 --prefix bin_22 /home/prve5836/Genome_Analysis/Data/Data_DNA/Binning_output/Binning_output.22.fa

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 02:00:00
#SBATCH -J FastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

#load modules
module load bioinfo-tools
module load FastQC

#Commands

fastqc -o ~/Genome-Analysis/Data_RNA/SRR4342137_1.paired.fastq.gz SRR4342137_2.paired.fastq.gz
fastqc -o ~/Genome-Analysis/Data_DNA/SRR4342139_1.paired.fastq.gz SRR4342139_2.paired.fastq.gz
fastqc -o ~/Genome-Analysis/Data_DNA/SRR4342127_1.paired.trimmed.fastq.gz SRR4342127_2.paired.trimmed.fastq.gz
fastqc -o ~/Genome-Analysis/Data_DNA/SRR4342129_1.paired.trimmed.fastq.gz SRR4342129_2.paired.trimmed.fastq.gz
fastqc -o ~/Genome-Analysis/Data_RNA/RNA_1_trim/*.fastq
fastqc -o ~/Genome-Analysis/Data_RNA/RNA_2_trim/*.fastq

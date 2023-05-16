
# Welcome to the Genome Analysis Project

# Description
The study is aimed to understand the metabolic roles of different bacterial groups inhabiting the marine dead zones of Northern Gulf of Mexico (nGOM). Dead zones are the regions with low dissolved oxygen concentration due to eutrophication and strong stratification. This condition is a result of excessive fertilizer drains in the sea; rich in nitrogen providing a suitable environment to the bacterioplankton. In this study, bacterial genomes from various areas of the Gulf of Mexico dead zone were assembled using a metagenomic method, and their metabolic activity was determined using meta transcriptomic data. The performed analyses provided the metabolic contributions of the uncultivated bacterial groups in nGOM region with low dissolved oxygen concentration.

# Analysis to Perform:
## 1. Reads preprocessing:
   > Trimming -  Trimmomatic- Command line tool, and the criteria of removal- three or more N’s or with an average quality score of less than Q20 and a
                 length of <50 bp.

   > Quality - Post trimming of reads, the quality control check needs to be performed using the software FastQC. The input data is retrieved from BAM (or) SAM files.

   The DNA sequence data obtained is already trimmed, only quality check needs to be done, whereas trimming needs to be done on the RNA sequence data.

## 2. Metagenome assembly:
   > The data provided is from 2 subsets of the 6 sets analyzed in the actual research. The sample contains multiple  DNA/RNA fragments of different organism which needs to be assembled and the tool to use is Megahit which is designed for complex sequence data.

## 3. Binning:
   > It is the grouping of contigs into discrete segments, or bins, based on specific characteristics. This is done by Metabat. Metabat uses tetranucleotide frequency and it can provide information about the genomic composition of a contig and can be used to distinguish between different microbial populations.

## 4. Quality check of assembly and bins:
   > The evaluation if the binning software did a good job and to start understanding what is inside each of them. CheckM provides a set of tools for assessing the quality of genomes that is very useful when working with metagenomes.

## 5. Functional annotation:
   > The annotation is performed to identify the functions of the genetic material. This is done with the tool Prokka.

## 6. Basic phylogenetic placement of bins:
   > A single sample can contain a surprisingly large microbial diversity. This analysis is to understand the evolutionary context of the species found in the sample. Constructing a tree based on the obtained genome will be useful in classifying them. Phylophlan is the tool used to run the phylogeny of the samples within the bin.

## 7. Aligner:
   > The sequences are aligned using BWA. This is a bioinformatic tool used to align multiple sequences for the further study of the species classification.

## 8. Homology Identification:
   > This is to identify the similar sequence to relate functions of different organisms. Blastn is the tool used for the homology study.

## 9. Analysis of activity (expression level) of different bins.
   > This is done using Htseq. HTSeq provides several utilities for processing and analyzing the output from RNA-seq experiments, including counting the number of reads mapping to each gene in a genome, quantifying transcript expression levels, and detecting differentially expressed genes between experimental conditions.

## Project Plan:
   > 31.03.2023: Reads Preprocessing (trimming + quality check)
   
   > 14.04.2023: DNA assembly
   
   > 17.04.2023: Binning
   
   > 25.04.2023: Binning and Assembly Evaluation
   
   > 02.05.2023: Annotation

   > 05.05.2023: Aligner/Mapping

   > 10.05.2023: Phylogeny

   > 11.05.2023: Analysis of activity (differential expression)
   
   > 16.05.2023: Prepare for presentation, reports, last checks
   
   > 23.05.2023: Presentation






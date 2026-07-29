
########
# Basecalling using dorado version 0.7.2
#######

dorado basecaller hac,5mCG_5hmCG \
  --min-qscore 7 --kit-name SQK-NBD114-24  --no-trim \
  ${pod5_in} > ${base_called_output}


######
# Merge bam samples if sample was sequenced across multiple runs
#####

merged_bam=<path to directory to store merged bam files>
samtools merge ~/spider_long_concat_no_mito/spider_long_concat_with_no_mito.fastq.gz ${base_called_output1}.bam ${base_called_output2}.bam ....


########
# Run fastqc on all samples
########

fastqc_out=<path to fastqc output directory>
fastqc ~/spider_long_concat_no_mito/spider_long_concat_with_no_mito.fastq.gz -o ${fastqc_out}

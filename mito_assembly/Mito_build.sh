#######
# set varaibles for path to short reads used to make the genome and the sample name
#######

path=<path to>/concatonated_short_reads/



#######
# Assemble mitogenome with getOrganelle
#######

get_organelle_from_reads.py -1 ~/Spider_brains/reads/trimmed_short_reads/short_reads.1_2.trim.fastq.gz \
			    -2 ~/Spider_brains/reads/trimmed_short_reads/short_reads.2_2.trim.fastq.gz \
           -R 10 -k 21,45,65,85,105 -F animal_mt -o  ~/Spider_brains/getorganelle/Csalei_mt_out --target-genome-size 17000


#######
# Standardize origin and annotate mtgrasp
#######

mtgrasp_standardize.py -i ~/Spider_brains/getorganelle/Csalei_mt_out/Csalei_complete_mitogenome.fasta -o Csalei_stand  -c 2 -p Csalei_ann -a -mp <path to>/miniforge3/bin

# the output name will resemble the following: Csalei.final-mtgrasp_v1.1.8-assembly.fa


#######
# Index ref genome with samtools and gatk
######

samtools faidx ~/Spider_brains/getorganelle/Csalei_mt_out/Csalei_ann.final-mtgrasp_v1.1.8-assembly.fa
samtools index ~/Spider_brains/getorganelle/Csalei_mt_out/Csalei_ann.final-mtgrasp_v1.1.8-assembly.fa
gatk CreateSequenceDictionary -R ~/Spider_brains/getorganelle/Csalei_mt_out/Csalei_ann.final-mtgrasp_v1.1.8-assembly.fa

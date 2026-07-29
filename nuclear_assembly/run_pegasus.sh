
mkdir no_mito_build2
cd no_mito_build2

pegasus.sh -n ~/spider_long_concat_no_mito/spider_long_concat_no_mito_rename.fastq.gz \
            -s1 ~/Spider_brains/reads/short_reads1/ \
            -phv ~/PHVindexes \
            -b ~/arachnida_odb10 \
            -qg ~/ref/GCF_026930045.1_Udiv.v.3.1_genomic.gff \
            -qf ~/ref/GCF_026930045.1_Udiv.v.3.1_genomic.fna \
            -r ~/ref/GCF_026930045.1_Udiv.v.3.1_genomic.fna \
            -t 10

# we did not use the scaffolds built from GCF_026930045.1_Udiv.v.3.1 for this publication

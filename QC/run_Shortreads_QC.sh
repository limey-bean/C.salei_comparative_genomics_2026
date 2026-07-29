#######
# Set variables
#######
sample_name=<name of the sample>
in=<path to raw concatonated short reads>
fastqc_out=<path to fastqc output directory>
fastp_out=<path to fastp output directory>

#######
# make directories
#######

mkdir -p ${in}
mkdir -p ${fastqc_out}
mkdir -p ${fastp_out}

########
# Run fastqc
########
fastqc ${in}* -o ${fastqc_out}

########
# Run fastp on all samples
########
fastp -i ${in}/${sample_name}_all_R1_001.fastq.gz -I ${in}/${sample_name}_all_R2_001.fastq.gz -o ${fastp_out}${sample_name}_R1_001.fastq.gz -O ${fast_pout}${sample_name}_R2_001.fastq.gz -h ${fastp_out}${sample_name}_fastp.html -j ${fastp_out}${sample_name}_fastp.json

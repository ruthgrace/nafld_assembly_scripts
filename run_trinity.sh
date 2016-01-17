dir=$1; #first parameter is the directory of all the fastq files

for F in `find $dir -name *.fastq`
do
  sample=$(basename $F);
  sample=${sample::-6};
  echo "sample $sample for file $F";
  Trinity --seqType fq --max_memory 20G --single $F --output "trinity_$sample" --trimmomatic --CPU 10;
done


for directory in * ; do
	sample=${directory:8};
	if [[ $directory == trinity* ]] ;
	then
		awk -v path=$directory"/Trinity.fasta" 'BEGIN {ORS="\t"} /^>/ {if (seqlen){printf "%s\n", seqlen}; print path;print;seqlen=0;next; } { seqlen = seqlen +length($0)}END{printf "%s\n", seqlen}' $directory"/Trinity.fasta" > $sample"_seq_lengths.txt";
	fi
done


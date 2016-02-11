for directory in * ; do
	sample=${directory:8};
	if [[ $directory == trinity* ]] ;
	then
		Rscript histogram_orf_lengths.r $sample"_seq_lengths.txt" $sample"_seq_length_histogram.pdf"
	fi
done


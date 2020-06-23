#! /bin/sh


#Run tabulated hmmscan
#do hmmscan --tblout=output.pfam --noali /databases/pfam_db/Pfam-A.hmm  "$f" > summary.txt


echo "Script usage pfam_aligner.sh input output evalue besthits cpus"
#Parameters selection

#echo "Enter input filename without extension (has to be .fas)"
input="$1"

#echo "Enter the output filename:"
output="$2"

#echo "Enter the e-value cut-off:"
evalue="$3"

#echo "Enter the maximum number of best hits:"
besthits="$4"

#echo "Enter the number of CPUs"
cpu="$5"


#computation

echo "Running alignment..."
#for f in *.fas

hmmsearch -A $besthits  -E $evalue --tblout $output.tab --noali --cpu $cpu -o $output.details /mnt/data/databases/PFAM/Pfam-A.hmm  $input.fas ;


echo "Done!" ;

exit 0

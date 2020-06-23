#!/bin/sh


#Run tabulated hmmscan
#do hmmscan --tblout=output.pfam --noali /databases/PFAM/Pfam-A.hmm  "$f" > summary.txt

#Parameters selection

echo "Script usage pfam_scan.sh input output evalue cpus"
#Parameters selection

#echo "Enter input filename without extension (has to be .fas)"
input="$1"

#echo "Enter the output filename:"
output="$2"

#echo "Enter the e-value cut-off:"
evalue="$3"

#echo "Enter the maximum number of best hits:"
#besthits="$4"

#echo "Enter the number of CPUs"
cpu="$4"


#computation

echo "Running alignment..."


hmmscan  -E $evalue --tblout $output.tabscan --noali --cpu $cpu -o $output.scan /mnt/data/databases/PFAM/Pfam-A.hmm  $input.fas ;


echo "Done!" ;

exit 0

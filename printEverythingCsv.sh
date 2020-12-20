#!/bin/bash

outFile=printOut.csv

echo "test,spec,area,subL,gateL,dyn,pCL2,pAll" > $outFile

for file in ./mcpatFINALfiles/*.txt; do
	test=$(echo $file | cut -d_ -f2)
	spec=$(echo $file | cut -d_ -f3)
	area=$(echo $(awk 'NR==25 {print $3}' $file) + $(awk 'NR==34 {print $3}' $file) | bc )
	subL=$(echo $(awk 'NR==27 {print $4}' $file) + $(awk 'NR==36 {print $4}' $file) | bc )
	gateL=$(echo $(awk 'NR==29 {print $4}' $file) + $(awk 'NR==38 {print $4}' $file) | bc )
	dyn=$(echo $(awk 'NR==30 {print $4}' $file) + $(awk 'NR==39 {print $4}' $file) | bc )
	pCL2=$(echo $(awk 'NR==26 {print $4}' $file) + $(awk 'NR==35 {print $4}' $file) | bc )
	pAll=$(awk 'NR==17 {print $4}' $file)
	echo "$test,$spec,$area,$subL,$gateL,$dyn,$pCL2,$pAll" >> $outFile
done
	

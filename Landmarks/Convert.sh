#!/bin/sh
#cycle through each txt files

#ls ~/Landmarks_3D/*.txt > specimens

for file in *.txt
do
	#grep -v 'fin-tip' -ev 'Adipose-fin-posterior' -ev 'Dorsal-fin-posterior' -ev 'Posteromedial-supraoccipital' -ev 'Anal-fin-posterior' $file > $file.final.txt
	egrep -v "fin-tip|Adipose-fin-posterior|Adipose-fin-anterior|Dorsal-fin-posterior|Posteromedial-supraoccipital|Anal-fin-posterior|Mouth-anterior|Mouth-posterior" $file > $file.final.txt

	#grep -v '<' $file.2.temp > $file.3.temp
	#awk '{print $2, $3, $4}' $file.3.temp > $file.4.temp
	#awk '{print}' ORS='\t' $file.4.temp > $file.oneline.temp

done

mkdir -p For-Analyses
mv *final.txt For-Analyses

#awk '{print}' *oneline.temp > all.temp

#paste specimens all.temp > Landmarks.temp

#tr ' ' \\t < Landmarks.temp > !Landmarks.txt

rm specimens

#!/bin/bash

mkdir -p dump
mkdir -p datasets

for f in dump_original/*.csv;
do
  cat $f | sed -e "s/\"\"/\"/g"  |  sed -e 's/\\//g'  > $f".nml"
done

for f in dump_original/*.nml;
do
 echo "Spliting file ${f}..."

 split -l100000  $f dump/

 echo "Converting files in tsv..."
 for fc in dump/*;
 do
    csvtool -t COMMA -u TAB col 7,4,1,5 $fc > $fc".tsv"
 done

 echo "Extracting datasets"
 for fe in dump/*.tsv;
 do
    gawk -F $'\t'  '{ print "<"$3"> <http://www.w3.org/2004/02/skos/core#prefLabel> \""$4"\"@"$2" ." >> "datasets/"$1".nt"}' $fe
 done

 rm -r -f dump
 mkdir -p dump

done

echo "Done..."

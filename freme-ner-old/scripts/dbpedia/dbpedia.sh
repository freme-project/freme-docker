#!/bin/bash

readonly DBPEDIA_URL="http://downloads.dbpedia.org/2015-10"
readonly all_languages=(en fr es nl ru)

for lang in ${all_languages[@]}
do
  echo "Downloading labels for ${lang}"
  wget "${DBPEDIA_URL}/core-i18n/${lang}/labels_${lang}.ttl.bz2"
  bzip2 -d "labels_${lang}.ttl.bz2"
done

echo "done!"

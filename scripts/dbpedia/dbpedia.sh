#!/bin/bash

readonly DBPEDIA_VERSION=$1
readonly all_languages=(en fr es nl ru)

for lang in ${all_languages[@]}
do
  wget "http://downloads.dbpedia.org/2015-10/core-i18n/${lang}/labels_${lang}.ttl.bz2"
  bzip2 -d "labels_${lang}.ttl.bz2"
done


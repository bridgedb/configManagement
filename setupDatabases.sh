#!/bin/bash

#rm gdb.config 2> /dev/null

find . -depth -name '*.zip' -exec /usr/bin/unzip -n {} \; -delete

wget -q https://raw.githubusercontent.com/bridgedb/BridgeDb/master/dbbuilder/src/org/bridgedb/extract/SpeciesList -O SpeciesList

while IFS=$'\t' read -r -a myArray
do
 #echo "a ${myArray[0]}"
 #echo "b ${myArray[1]}"
 #echo "c ${myArray[4]}"

 path=`pwd`
 file=`ls | grep "^${myArray[4]}_Derby_"`
 if [ ${#file} -ge 1 ]; then
   #echo $path
   #echo -e "file $file"
   #echo -e "${myArray[2]}\n"
   echo -e "${myArray[0]}\t$path/$file" >> gdb.config
 fi

done < SpeciesList

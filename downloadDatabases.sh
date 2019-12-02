#!/bin/bash

protocol="http://"
hostname="www.bridgedb.org"
path="/data/new_structure"

if [ -z $1 ] ; then
  echo "Please fill the dataset"
  exit
fi

dataset=$1

if [ -z $2 ]; then
  echo "Please fill the distribution"
  exit
fi

distribution=$2

if [ -z $3 ]; then
  echo "No version set, latest being downloaded"
  version="latest"
else
  version="$3"
fi

fulladdress_folder="$protocol$hostname$path$data/$dataset/$distribution/$version/"
fulladdress_file="$protocol$hostname$path$data/$dataset/$distribution/$version"


#wget  -np -nH --cut-dirs 1 $fulladdress
#wget -r -np -nH --cut-dirs=5 -R "index.*, robots.txt, robots.txt.tmp" $fulladdress_file


#check if it worked. If not try downloading folder
if [ $dataset == "geneproductsplants" ] || [ $dataset == "geneproducts" ]; then 
    wget -r -np -nH --cut-dirs=5 -R "index.*, robots.txt, robots.txt.tmp" $fulladdress_folder
   else
    wget -q $fulladdress_file
fi


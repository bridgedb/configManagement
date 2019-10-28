x#!/bin/bash

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


fulladdress="$protocol$hostname$path$data/$dataset/$distribution/$version/"
echo $fulladdress

#wget  -np -nH --cut-dirs 1 $fulladdress
wget -r -np -nH --cut-dirs=5 -R "index.*, robots.txt, robots.txt.tmp" $fulladdress

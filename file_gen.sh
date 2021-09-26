#!/bin/bash

# file_gen.sh <directory>
# Create files for new problem

if [[ $# -ne 1 ]]
then
    echo "Input problem number"
    exit 1
fi

if [[ -d ./$1 ]]
then
    echo "Directory is already existed!"
    exit 1
fi

mkdir $1
cd $1
mkdir in
mkdir out
touch a.cpp in_gen.cpp sol.cpp test_desc.txt
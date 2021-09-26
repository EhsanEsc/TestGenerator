#!/bin/bash

# input_gen.sh <directory> <STARTING_TEST> <FINISHING_TEST>

if [[ $# -ne 3 ]]
then
    echo "Input directory, starting_test and finishing_tset"
    exit 1
fi

(
    cd ./$1
    g++ -std=c++11 in_gen.cpp -o in_gen.out
)

starting_test=$2
finishing_tset=$3

for ((i = $starting_test; i <= $finishing_tset; i++))
do
    ./$1/in_gen.out > ./$1/in/input$i.txt 
    sleep 1
done
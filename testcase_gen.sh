#!/bin/bash

# testcase.sh <directory> <STARTING_TEST> <FINISHING_TEST>

if [[ $# -ne 3 ]]
then
    echo "Input problem_number, starting_test and finishing_tset"
    exit 1
fi

./in_gen.sh $1 $2 $3
./out_gen.sh $1 $2 $3
./tester.sh $1 $2 $3
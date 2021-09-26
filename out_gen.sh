#!/bin/bash

# ./out_gen.sh <directory> [<STARTING_TEST> <FINISHING_TEST>]

TESTCASE_DIR=$1

(
    cd ./$TESTCASE_DIR
    g++ -std=c++11 sol.cpp -o sol.out
)

starting_test=1;
finishing_tset=$(ls -1q ./$TESTCASE_DIR/in/*.txt | wc -l)
if [[ $# -eq 3 ]]
then
    starting_test=$2
    finishing_tset=$3
fi

for ((i = $starting_test; i <= $finishing_tset; i++))
do
	./$TESTCASE_DIR/sol.out < ./$TESTCASE_DIR/in/input$i.txt > ./$TESTCASE_DIR/out/output$i.txt
done

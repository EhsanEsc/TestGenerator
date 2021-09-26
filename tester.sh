#!/bin/bash

# ./tester.sh <ProblemNumber> [STARTING_TEST] [FINISHING_TEST]

# Defining colors
RED="\033[0;31m"
GREEN="\033[0;32m"
CYAN="\033[0;36m"
NC='\033[0m' # No Color

TESTCASE_DIR=$1

cd ./$1
rm -f a.out
g++ -std=c++11 a.cpp -o a.out
if [[ $? -eq 1 ]]
then
    echo "a.cpp compile failed"
    exit 1
fi

cd ..

rm -rf $1/tmp
mkdir -p $1/tmp

counter=0
starting_test=1;
finishing_tset=$(ls -1q ./$1/in/*.txt | wc -l)
if [[ $# -eq 3 ]]
then
    starting_test=$2
    finishing_tset=$3
fi

for ((i = $starting_test; i <= $finishing_tset; i++))
do
    ./$1/a.out < ./$1/in/input$i.txt > ./$1/tmp/output$i.txt
    if [[ $? -ne 0 ]]
    then
        echo -e "${RED}Runtime Error for test $i${NC}"
        continue
    fi

    STATUS="$(cmp --silent ./$1/out/output$i.txt ./$1/tmp/output$i.txt; echo $?)"
    if [[ $STATUS -ne 0 ]]; then 
        echo -e "${RED}$i - Failed!${NC}"
    else
        echo -e "${GREEN}$i - Passed!${NC}"
        counter=$(( counter + 1 ));
    fi
done

echo -e "\n${CYAN}######## $counter test cases passed! ########${NC}"
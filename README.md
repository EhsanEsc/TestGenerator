# TestGenerator

Some scripts can be used for automating test generating and code testing.

1. Run preparation script
2. Write desired codes for input generation and solution code.(And copy solution code to "a.cpp" for double checking)
3. Run test generator to create any number of tests
4. Now you can test any other code with created tests with "tester.sh" script
5. Have fun!

## Install

	chmod +x *.sh


## Usage

### Preparation

	./file_gen.sh [ProblemNumber]

Create directory for problem with required files and folders


Generated files are

	"in" and "out" folders
	"in_gen.cpp" -> generating input of tests
  	"a.cpp" -> used for c++ code testing
  	"sol.cpp" -> used for creating output of tests
  	"test_desc.txt" -> info about subtasks of tests


Optional files [NOT ADDED YET #WIP#]
	
	"tester.cpp" instead of out folder -> output checker instead of checking difference with sol.cpp output
  	"in_gen_subtaskX.cpp" files -> multiple input generator for each subtask instead of one file
  	"a.py" -> used for python code testing

### Test Generator

	./testcase_gen.sh <ProblemNumber> <STARTING_TEST> <FINISHING_TEST>

Create tests for desired problem from index <STARTING_TEST> to <FINISHING_TEST> and test them with "a.cpp".

You can use "in_gen.sh" and "out_gen.sh" separately with exact syntax also.

This script create tests with "in_gen.cpp" stored them in "in" folder THEN generate outputs with "sol.cpp" and store them in "out" folder 

Then test "a.cpp" with them for double checking.


### Code Tester

	./tester.sh <ProblemNumber> [STARTING_TEST] [FINISHING_TEST]

Run all of test cases(or from desired start to finish) on "a.cpp" then print results

# Work In Progress

1. Add python code tester
2. Add subtask input generation
3. Add small library for generating random stuff
4. Add Tester.cpp support for code testing
5. Add input limitation check
6. Add more robustness for codes
7. Add some CLI for auto generating stuff
8. Rewrite readme : )

# Contact

For any question, recommendation and other stuff email me : )

Email: e.escandari1@gmail.com

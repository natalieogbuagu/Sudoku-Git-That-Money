# !/bin/bash
# Team Git That Money
# CS50 Project

echo""
echo "Make the file"
make clean
make 
echo""

echo "Check if tests made"
if ( ! [ -x fuzzytesting ] )
then
	echo 1>&2 "Fuzzytesting not made"
	exit 1

elif ( ! [ -x ./randboard ] )
then
	echo 1>&2 "Randboard not made"
	exit 2
else
	echo "Everything was made successfully"
fi
echo""


echo "Check with wrong arguments"

../sudoku/sudoku
../sudoku/sudoku arg1 arg2
../sudoku/sudoku invalidChoice
echo""


echo "Check with valid arguments"
../sudoku/sudoku create
../sudoku/sudoku solve < ../solver/testBoard
echo""


echo "Check solve with many invalid inputs"
./randboard 50 8 | ../sudoku/sudoku solve
echo""


echo "Check solve with many valid inputs"

for i in {0..4} 
do
	../sudoku/sudoku create | ../sudoku/sudoku solve
done
echo""
































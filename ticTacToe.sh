#!/bin/bash -x
echo "Welcome to Tic Tac Toe"

declare -a board
board=(1 2 3 4 5 6 7 8 9)

# To display board
for (( i=0;i<9;i=i+3 ))
do
		echo " |${board[$i]} | ${board[$i+1]} | ${board[$i+2]} |"
		echo "  "
done

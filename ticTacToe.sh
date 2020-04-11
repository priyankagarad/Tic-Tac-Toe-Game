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

#assign value to user
function assignSymbol()
{
	symbol=$((RANDOM%2))
	if [[ $symbol -eq 1 ]]
	then
		player="user"
		user="X"
		computer="O"
	else
		player="computer"
		user="O"
		computer="X"
	fi
}
board
assignSymbol

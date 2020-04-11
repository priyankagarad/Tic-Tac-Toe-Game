#!/bin/bash -x
echo "Welcome to Tic Tac Toe"

#variable
cellcount=0
maximumCell=9

declare -a board
board=(1 2 3 4 5 6 7 8 9)

# To display board
for (( i=0;i<7;i=i+3 ))
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

# To know who play
function switchPlayer()
{
	if [[ $player == "user" ]]
	then
  	  echo "$user"
   fi
}
#  For user play
function userPlay()
{
	if [[ $cell_Count -lt $max_Cell ]]
   then
		read -p "Enter Number Between 1 to 9:" position
      if [[ ${board[$position-1]} -eq $position ]]
      then
         board[$position-1]=$user
         ((cell_Count++))
         displayBoard
         rowColumnDiagonalWin
      else
         echo "Invalid Cell"
         userPlay
      fi

	else
      echo "Game tie !!"
      exit
	fi
}
#function to check winning condition for Row Column and Diagonal
function rowColumnDiagonalWin()
{
   diagonal=0
   column=0
   for((row=0;row<7;row=row+3))
   do
     if [[ ${board[$row]} == ${board[$row+1]} && ${board[$row+1]} == ${board[$row+2]} ]] ||
        [[ ${board[$column]} == ${board[$column+3]} && ${board[$column+3]} ==  ${board[$column+6]} ]] ||
        [[ ${board[$diagonal]} == ${board[$diagonal+4]} && ${board[$diagonal+4]} == ${board[$diagonal+8]} ]] ||
        [[ ${board[$diagonal+2]} == ${board[$diagonal+4]} && ${board[$diagonal+4]} == ${board[$diagonal+6]} ]]
     then
        echo "$player Win"
        exit
     fi
     column=$((column+1))
   done
}

#to show Board Condition
function checkCondition()
{
   board
   (( cellCount++ ))
}

board
assignSymbol
switchPlayer


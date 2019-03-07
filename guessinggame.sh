#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess the number of files in the directory."

# function counts number of files in directory including guessinggame.sh
func_num_files () {
  ls | wc -l
}

# call function and assign to variable
num_files=$( func_num_files )

# loop until we guess the correct number
while true
do

  # read in user's guess
  read guess

  if [[ $guess -gt $num_files ]]
  then
    echo "Your guess is too high.  Guess again."

  elif [[ $guess -lt $num_files ]]
  then
    echo "Your guess is too low.  Guess again."

  elif [[ $guess -eq $num_files ]]
  then
    echo "Correct guess!"
    exit 1

  else
    echo "Unrecognized input!"
    exit 1

  fi
done

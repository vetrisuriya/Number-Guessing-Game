#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"


RANDOM_NUM() {
  min=1
  max=1000
  
  range=$((max - min + 1))
  rand=$((min + (RANDOM % range)))
  echo "$rand"
}

VALIDATE_ANS() {
  if [[ ! $2 =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
    read USER_INPUT
    VALIDATE_ANS $1 $USER_INPUT $3
  else
    if [[ $1 -lt $2 ]]
    then
      echo -e "It's lower than that, guess again:"
      read USER_INPUT
      NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
      VALIDATE_ANS $1 $USER_INPUT $3
    elif [[ $1 -gt $2 ]]
    then
      echo -e "It's higher than that, guess again:"
      read USER_INPUT
      NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
      VALIDATE_ANS $1 $USER_INPUT $3
    elif [[ $1 -eq $2 ]]
    then
      INSERT_GAME_RECORD=$($PSQL "INSERT INTO games(user_id, game_score) VALUES($3, $NUMBER_OF_GUESSES)")
      if [[ $INSERT_GAME_RECORD == "INSERT 0 1" ]]
      then
        echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $1. Nice job!"
      fi
    fi
  fi
}

GET_RANDOM_VAL=$(RANDOM_NUM)

echo -e "Enter your username:"
read USER_NAME

NUMBER_OF_GUESSES=1
USER_ID=$($PSQL "SELECT user_id FROM user_stories WHERE username='$USER_NAME'")

if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO user_stories(username) VALUES('$USER_NAME')")
  echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."

  USER_ID=$($PSQL "SELECT user_id FROM user_stories WHERE username='$USER_NAME'")

  echo -e "Guess the secret number between 1 and 1000:"
  read USER_INPUT

  VALIDATE_ANS $GET_RANDOM_VAL $USER_INPUT $USER_ID
else
  GAME_DATA=$($PSQL "SELECT count(game_id) AS total_games, min(game_score) AS max_score FROM games WHERE user_id='$USER_ID'")

  echo "$GAME_DATA" | while read games_played BAR best_game
  do
    echo "Welcome back, $USER_NAME! You have played $games_played games, and your best game took $best_game guesses."
  done

  echo -e "Guess the secret number between 1 and 1000:"
  read USER_INPUT

  VALIDATE_ANS $GET_RANDOM_VAL $USER_INPUT $USER_ID
fi
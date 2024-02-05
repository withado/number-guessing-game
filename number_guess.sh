#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guesser --tuples-only -c"



#Enter your username:
echo "Enter your username:"

read USERNAME

USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")

if [[ -z $USER_ID_RESULT ]]
then
INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
echo "Welcome, $USERNAME! It looks like this is your first time here."
else
GAMES_INFO=$($PSQL "SELECT games_played, best_game_guesses FROM games WHERE user_id = $USER_ID_RESULT")
echo $GAMES_INFO | while read GAMES_PLAYED BAR BEST_GAME
do
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
done
fi
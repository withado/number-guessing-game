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
INSERT_INTO_GAMES_RESULT=$($PSQL "INSERT INTO games(user_id, games_played, best_game_guesses) VALUES($USER_ID_RESULT, 0, 0)")


echo "Welcome, $USERNAME! It looks like this is your first time here."
else
GAMES_INFO=$($PSQL "SELECT games_played, best_game_guesses FROM games WHERE user_id = $USER_ID_RESULT")
echo $GAMES_INFO | while read GAMES_PLAYED BAR BEST_GAME
do
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
done
fi

NUMBER=$(($RANDOM % 1000 + 1))
GUESSES=0


echo "Guess the secret number between 1 and 1000:"

while [[ $GUESS -ne $NUMBER ]]
do 
read GUESS

if [[ $GUESS =~ ^[a-zA-Z]+ ]]
then
echo "That is not an integer, guess again:"
elif [[ $GUESS -gt $NUMBER ]]
then
echo  "It's lower than that, guess again:"
elif [[ $GUESS -lt $NUMBER ]]
then 
echo "It's higher than that, guess again:"
fi
((GUESSES+=1))
done
echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"

#UPDATE into stuff



echo $GAMES_INFO | while read GAMES_PLAYED BAR BEST_GAME
do

if [[ $BEST_GAME -eq 0 || $BEST_GAME < $GUESSES ]]
then 
BEST_GAME=$GUESSES
fi
((GAMES_PLAYED+=1))
UPDATE_RESULT=$($PSQL "UPDATE games SET games_played = $GAMES_PLAYED, best_game_guesses = $BEST_GAME WHERE user_id = $USER_ID_RESULT")
done




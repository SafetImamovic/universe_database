#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c";

GUESS()
{
	USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$1';")
	NUMBER=0;
	RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ));
	NUMBER_TRIES=0;

	echo "Guess the secret number between 1 and 1000:"

	until [[ $NUMBER == $RANDOM_NUMBER ]]
	do
		read NUMBER;
		
		if [[ ! $NUMBER =~ ^[0-9]+$ ]]
		then
			echo "That is not an integer, guess again:"
		else
			if [[ $NUMBER -gt $RANDOM_NUMBER ]]
			then
				echo "It's lower than that, guess again:"
			else
				echo "It's higher than that, guess again:"
			fi

			NUMBER_TRIES=$(( NUMBER_TRIES + 1 ))
		fi
	done

	INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (number_of_guesses, user_id, secret_number) VALUES ($NUMBER_TRIES, $USER_ID, $RANDOM_NUMBER);")

	echo "\nYou guessed it in $NUMBER_TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!\n"
}

echo "Enter your username:";
read USER_NAME;

FIND_USER=$($PSQL "SELECT name FROM users WHERE name = '$USER_NAME'");

if [[ -z $FIND_USER ]]
then
	echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here.\n";
	INSERT_NEW_USER_RESULT=$($PSQL "INSERT INTO users (name) VALUES ('$USER_NAME');");
else
	# GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE name = '$USER_NAME' GROUP BY (user_id)");
	# BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games INNER JOIN users USING(user_id) WHERE name = '$USER_NAME' GROUP BY (user_id)");

	USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME'")
	GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID GROUP BY user_id")
	BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID GROUP BY user_id")
	USER_NAME_FROM_DB=$($PSQL "SELECT name FROM users WHERE user_id = $USER_ID")

	echo -e "\nWelcome back, $USER_NAME_FROM_DB! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

GUESS $USER_NAME
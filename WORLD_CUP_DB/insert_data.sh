#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE games, teams;")";
echo "$($PSQL "ALTER SEQUENCE games_game_id_seq RESTART WITH 1;")";
echo "$($PSQL "ALTER SEQUENCE teams_team_id_seq RESTART WITH 1;")";

year,round,winner,opponent,winner_goals,opponent_goals
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  SELECT_TEAM_RESULT=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER';");

  echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
  if [[ $WINNER != "winner" ]]
  then
    if [[ -z $SELECT_TEAM_RESULT ]]
    then
      echo "$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER');")";
    fi
  fi

  SELECT_TEAM_RESULT=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT';");

  echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
  if [[ $OPPONENT != "opponent" ]]
  then
    if [[ -z $SELECT_TEAM_RESULT ]]
    then
      echo "$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT');")";
    fi
  fi

  if [[ $YEAR != "year" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';");
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT';");
    echo "$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
  fi
done
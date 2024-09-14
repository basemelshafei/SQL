#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Read games.csv and insert teams

while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
  # Skip the first line (header)
  if [[ $year != "year" ]]
  then
    # Insert winner team
    TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$winner'")
    if [[ -z $TEAM_NAME ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
    fi

    # Insert opponent team
    TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$opponent'")
    if [[ -z $TEAM_NAME ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
    fi
  fi
done < games.csv

# Insert game data
while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then
    # Get team IDs
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    # Insert the game
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")
  fi
done < games.csv

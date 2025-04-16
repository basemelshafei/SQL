#!/bin/bash
#  to fetch and display element details from periodic_table DB
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# No argument
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit
fi

# Determine the input type
if [[ $1 =~ ^[0-9]+$ ]]; then
  QUERY_CONDITION="atomic_number=$1"
elif [[ $1 =~ ^[A-Z][a-z]?$ ]]; then
  QUERY_CONDITION="symbol='$1'"
else
  QUERY_CONDITION="name='$1'"
fi

# Query the element
ELEMENT=$($PSQL "SELECT atomic_number, name, symbol, atomic_mass, melting_point_celsius, boiling_point_celsius, type FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE $QUERY_CONDITION")

# If no result
if [[ -z $ELEMENT ]]; then
  echo "I could not find that element in the database."
else
  IFS="|" read ATOMIC_NUMBER NAME SYMBOL MASS MELTING BOILING TYPE <<< "$ELEMENT"
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
fi

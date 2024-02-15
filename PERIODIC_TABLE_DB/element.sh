#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ ! $1 ]]
then
  echo "Please provide an element as an argument."
else
  # echo "The argument which was provided is: $1";
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE symbol = '$1' OR name = '$1';")
  else
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number = $1;")
  fi

  if [[ -z $ELEMENT ]]
  then
    echo "I could not find that element in the database."
  else
    echo $ELEMENT | while IFS='|' read ATOMIC_NUMBER SYMBOL NAME
    do
      PROPERTIES=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius, type_id FROM properties WHERE atomic_number = $ATOMIC_NUMBER;")
      # echo $PROPERTIES

      echo $PROPERTIES | while IFS='|' read ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID
      do
        TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $TYPE_ID;")

        echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done
    done
  fi
fi

INSERT_TI=$($PSQL "UPDATE elements SET symbol = 'Ti' WHERE symbol = 'T';")
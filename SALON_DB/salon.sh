#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

echo -e "Welcome to My Salon, how can I help you?\n"

MAIN_MENU()
{
  if [[ $1 ]]
  then
    echo "$1"
  fi

  SERVICES_LIST=$($PSQL "SELECT * FROM services;")
  echo "$SERVICES_LIST" | while read SERVICE_ID_SELECTED BAR SERVICE
  do
    echo "$SERVICE_ID_SELECTED) $SERVICE"
  done

  read SELECTION 

  case $SELECTION in
    1) SELECTED_SERVICE 1 "cut" ;;
    2) SELECTED_SERVICE 2 "color" ;;
    3) SELECTED_SERVICE 3 "perm" ;;
    4) SELECTED_SERVICE 4 "style" ;;
    5) SELECTED_SERVICE 5 "trim" ;;
    *) MAIN_MENU "I could not find that service. What would you like today?" ;;
  esac
}

SELECTED_SERVICE()
{
  # echo "$1"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'";)
  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME;

    INSERT_RESULT=$($PSQL "INSERT INTO customers (phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME');")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    echo -e "\nWhat time would you like your $2?"
    read SERVICE_TIME;

    INSERT_RESULT=$($PSQL "INSERT INTO appointments (time, customer_id, service_id) VALUES ('$SERVICE_TIME', $CUSTOMER_ID, $1);")
    # I have put you down for a cut at 10:30, Fabio.
    echo "I have put you down for a $2 at $SERVICE_TIME, $CUSTOMER_NAME."

  else


    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE';")

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    echo -e "\nWhat time would you like your $2,$CUSTOMER_NAME?"
    read SERVICE_TIME;

    INSERT_RESULT=$($PSQL "INSERT INTO appointments (time, customer_id, service_id) VALUES ('$SERVICE_TIME', $CUSTOMER_ID, $1);")
    # I have put you down for a cut at 10:30, Fabio.
    echo "I have put you down for a $2 at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU

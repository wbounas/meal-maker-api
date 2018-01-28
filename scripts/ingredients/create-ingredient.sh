#!/bin/bash

# - PROTECTED -
# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# TOKEN="" NAME="Test Ingredient" UNIT="each-test" QUANTITY=12 NOTES="test-notes" FUTURE=false sh ./scripts/ingredients/create-ingredient.sh

# - UNPROTECTED -
# NAME="Test Ingredient" UNIT="each-test" QUANTITY=12 NOTES="test-notes" sh ./scripts/ingredients/create-ingredient.sh

# sends a POST request to /ingredients to create a new ingredient

curl "http://localhost:4741/ingredients" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "ingredient": {
      "name": "'"${NAME}"'",
      "unit": "'"${UNIT}"'",
      "quantity": "'"${QUANTITY}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
  # line 16 is only necessary if IngredientController is protected
  # aka inheriting from the ProtectedController class

  # please add this to the end of line 22 if testing :future column
  # - NOTE - you will have to add the FUTURE variable when running the script

  # ,
  # "future": "'"${FUTURE}"'"

echo

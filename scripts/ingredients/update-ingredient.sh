#!/bin/bash

# - PROTECTED -
# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# TOKEN="" ID=4 NAME="Test Update Ingredient" UNIT="each-test-update" QUANTITY=12 NOTES="test-updated-notes" FUTURE=false sh ./scripts/ingredients/update-ingredient.sh

# - UNPROTECTED -
# ID=4 NAME="Test Update Ingredient" UNIT="each-test-update" QUANTITY=12 NOTES="test-updated-notes" FUTURE=false sh ./scripts/ingredients/update-ingredient.sh

# send a PATCH request to /ingredients/:id to update/change a specific ingredient

curl "http://localhost:4741/ingredients/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "ingredient": {
      "name": "'"${NAME}"'",
      "unit": "'"${UNIT}"'",
      "quantity": "'"${QUANTITY}"'",
      "notes": "'"${NOTES}"'",
      "future": "'"${FUTURE}"'"
    }
  }'
  # line 16 is only necessary if IngredientController is protected
  # aka inheriting from the ProtectedController class

echo

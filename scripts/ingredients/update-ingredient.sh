#!/bin/bash

# ID=4 NAME="Test Update Ingredient" UNIT="each-test-update" QUANTITY=12 NOTES="test-updated-notes" FUTURE=false sh ./scripts/ingredients/create-ingredient.sh
# send a PATCH request to /ingredients/:id to update/change a specific ingredient

curl --include --request PATCH "http://localhost:4741/ingredients/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "'"${NAME}"'",
      "unit": "'"${UNIT}"'",
      "quantity": "'"${QUANTITY}"'",
      "notes": "'"${NOTES}"'",
      "future": "'"${FUTURE}"'"
    }
  }'

echo

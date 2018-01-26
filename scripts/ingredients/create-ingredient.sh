#!/bin/bash

# NAME="Test Ingredient" UNIT="each-test" QUANTITY=12 NOTES="test-notes" FUTURE=false sh ./scripts/ingredients/create-ingredient.sh
# sends a POST request to /ingredients to create a new ingredient

curl --include --request POST "http://localhost:4741/ingredients" \
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

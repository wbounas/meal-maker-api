#!/bin/bash

# - PROTECTED -
# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# TOKEN="" ID=1 sh ./scripts/ingredients/get-ingredient.sh

# - UNPROTECTED -
# ID=1 sh ./scripts/ingredients/get-ingredient.sh

# sends a GET request to the server for a specific ingredient /ingredients/:id

curl "http://localhost:4741/ingredients/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
  # line 15 is only necessary if IngredientController is protected
  # aka inheriting from the ProtectedController class

echo

#!/bin/bash

# - PROTECTED -
# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# TOKEN="" sh ./scripts/ingredients/get-ingredients.sh

# - UNPROTECTED -
# sh ./scripts/ingredients/get-ingredients.sh

# sends a GET request to the server for all /ingredients

curl "http://localhost:4741/ingredients" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
  # line 15 is only necessary if IngredientController is protected
  # aka inheriting from the ProtectedController class

echo

#!/bin/bash

# - PROTECTED -
# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# UID=:id of the user who owns the ingredient
# ID=4 or the id of the ingredient you would like to delete
# TOKEN="" UID=2 ID=4 sh ./scripts/user-ingredients/delete-user-ingredient.sh

# - UNPROTECTED -
# - NOTE - will need to remove user_id query in URL to run unprotected
# ID=4 or the id of the ingredient you would like to delete
# ID=4 sh ./scripts/ingredients/delete-ingredient.sh

# sends a DELETE request to the specific ingredient to delete at /ingredients/:id

curl "http://localhost:4741/ingredients/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"
  # line 17 is only necessary if IngredientController is protected
  # aka inheriting from the ProtectedController class

echo

#!/bin/bash

# ID=1 sh ./scripts/ingredients/get-ingredient.sh
# sends a GET request to the server for a specific ingredient /ingredients/:id

curl --include --request GET "http://localhost:4741/ingredients/${ID}"

echo

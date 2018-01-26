#!/bin/bash

# ID=4 or the id of the ingredient you would like to delete
# ID=4 sh ./scripts/ingredients/delete-ingredient.sh
# sends a DELETE request to the specific ingredient to delete at /ingredients/:id

curl --include --request DELETE "http://localhost:4741/ingredients/${ID}"

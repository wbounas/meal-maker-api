#!/bin/bash

# sh ./scripts/ingredients/get-ingredients.sh
# sends a GET request to the server for all /ingredients

curl --include --request GET "http://localhost:4741/ingredients"

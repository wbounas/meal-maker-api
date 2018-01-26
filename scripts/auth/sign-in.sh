#!/bin/bash

# EMAIL="wb" PASSWORD="wb1" sh ./scripts/auth/sign-in.sh
# sends a POST request to /sign-in

curl "http://localhost:4741/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo

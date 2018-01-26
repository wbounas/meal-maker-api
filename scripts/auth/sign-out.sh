#!/bin/bash

# TOKEN="" sh ./scripts/auth/sign-out.sh
# sends a DELETE request to /sign-out

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo

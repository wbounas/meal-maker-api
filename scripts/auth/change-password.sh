#!/bin/bash

# TOKEN="" OLDPW="wb1" NEWPW="wb2" sh ./scripts/auth/change-password.sh
# sends a PATCH request to /change-password

curl "http://localhost:4741/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

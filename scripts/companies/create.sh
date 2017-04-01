#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/companies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "company": {
      "name": "Google",
      "location": "Bronxville",
      "url": "www.test.com",
      "note": "company creates search engines"
    }
  }'

echo

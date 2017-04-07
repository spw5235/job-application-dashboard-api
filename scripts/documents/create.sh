#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/documents"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "document": {
      "doctype": "Resume",
      "doctext": "Resume Text Here",
      "docurl": "www.test.com"
    }
  }'

echo

#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/statuses/3"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "status": {
      "status_type": "revised",
      "subject": "nothing",
      "details": "nothing",
      "due_date": "2016-01-01",
      "archive": false,
      "data_completed": null
    }
  }'

echo

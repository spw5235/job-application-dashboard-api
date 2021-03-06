#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs/${ID}"
# URL_PATH="/students/2/sessions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "job": {
        "title": "update",
        "posting_date": "2017-05-23"
      }
    }'

echo

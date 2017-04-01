#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/companies/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "company": {
      "name": "APPLE",
      "location": "Bronxville",
      "url": "www.test.com",
      "note": "company creates search engines"
    }
  }'

echo

# ID=2 FIRST_NAME="Jeff" LAST_NAME="W" BORN_ON="2016-02-01" SCHOOL="QUINCY" TEACHER="G" GRADE="4"

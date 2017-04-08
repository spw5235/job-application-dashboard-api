#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs/5"
# URL_PATH="/students/2/sessions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "job": {
        "title": "update",
        "posting_date": "2016-01-01",
        "post_url": "www.monster.com",
        "salary": "20,000",
        "requirement": "none",
        "deadline": "",
        "action_required": "",
        "pending": "true"
      }
    }'

echo

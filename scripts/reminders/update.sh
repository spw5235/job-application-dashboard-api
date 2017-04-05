#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/3"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "reminder": {
      "reminder_type": "action",
      "reminder_subject": "Call Person",
      "reminder_details": "details",
      "reminder_date": "2016-01-01",
      "reminder_archive": "false",
      "reminder_compl_date": "2017-01-01"
    }
  }'

echo

#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/communications"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "communication": {
      "c_date": "05-05-2010",
      "c_method": "Phone",
      "c_subject": "Interview",
      "c_details": "Details Here",
      "c_link": "www.gmail.com",
      "c_notes": "Notes here",
      "contact_ref_id": "2",
      "contact_ref_name": "Steve Wisner"
    }
  }'

echo

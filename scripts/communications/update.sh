#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/communications/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "communication": {
      "c_date": "05-05-2010",
      "c_method": "Phone",
      "c_subject": "Interview",
      "c_details": "Details Here",
      "c_link": "www.gmail.com",
      "c_notes": "Notes here",
      "contact_ref_id": "2",
      "contact_ref_name": "Jeff Wisner"
    }
  }'

echo

# ID=2 FIRST_NAME="Jeff" LAST_NAME="W" BORN_ON="2016-02-01" SCHOOL="QUINCY" TEACHER="G" GRADE="4"

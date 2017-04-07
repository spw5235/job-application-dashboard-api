#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "contact": {
      "first_name": "Update",
      "last_name": "Bronxville",
      "full_name": "www.test.com",
      "nickname": "APPLE",
      "company_name": "Bronxville",
      "email": "www.test.com",
      "phone": "APPLE",
      "website": "Bronxville",
      "job_ref_id": "1",
      "reminder_ref_id": "2",
      "document_ref_id": "3",
      "notes": "company creates search engines"
    }
  }'

echo

# ID=2 FIRST_NAME="Jeff" LAST_NAME="W" BORN_ON="2016-02-01" SCHOOL="QUINCY" TEACHER="G" GRADE="4"

#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "contact": {
      "first_name": "Original",
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

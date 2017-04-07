#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/documents/1"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "document": {
      "doctype": "Revised Resume",
      "doctext": "Resume Text Here",
      "docurl": "www.test.com"
    }
  }'

echo

# ID=2 FIRST_NAME="Jeff" LAST_NAME="W" BORN_ON="2016-02-01" SCHOOL="QUINCY" TEACHER="G" GRADE="4"

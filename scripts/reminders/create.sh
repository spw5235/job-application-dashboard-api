
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/reminders"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
      "reminder": {
        "reminder_type": "pending",
        "reminder_subject": "Call Person",
        "reminder_details": "details",
        "reminder_date": "2016-01-01",
        "reminder_archive": "false",
        "reminder_compl_date": "2017-01-01",
        "company_ref_id": "2",
        "job_ref_id": "3"
      }
    }'


# URL_PATH="/students/${STUDENT_ID}/sessions"
    # --data '{
    #   "session": {
    #     "obs_on": "'"${OBS_ON}"'",
    #     "obs_setting": "'"${OBS_SETTING}"'",
    #     "obs_task": "'"${OBS_TASK}"'",
    #     "obs_time": "'"${OBS_TIME}"'",
    #     "int_num": "'"${INT_NUM}"'"
    #   }
    # }'

echo

#STUDENT_ID=1 TOKEN="" OBS_ON=2016-05-05 OBS_TASK="Z" OBS_SETTING="Z" OBS_TIME=3 INT_NUM=3 sh scripts/sessions/create.sh

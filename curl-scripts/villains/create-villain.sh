#!/bin/bash

curl "http://localhost:4741/villains" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "villain": {
      "name": "'"${NAME}"'",
      "location": "'"${LOC}"'",
      "universe": "'"${UNI}"'"
    }
  }'

echo

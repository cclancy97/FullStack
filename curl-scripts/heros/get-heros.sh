#!/bin/bash

curl "http://localhost:4741/heros"\
 --request GET \
 --header "Authorization: Token token=${TOKEN}"

echo

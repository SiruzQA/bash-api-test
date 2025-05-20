#!/bin/bash

API_URL="https://reqres.in/api/users"
LOG_FILE="../logs/test_log_$(date +%F).txt"
UUID=$(uuidgen)
RESPONSE=$(curl -s -w "\nHTTP_STATUS:%{http_code}" -X POST "$API_URL" \
  -H "Content-Type: application/json" \
  -d "{\"name\": \"user-$UUID\", \"job\": \"qa-engineer\"}")

STATUS=$(echo "$RESPONSE" | grep HTTP_STATUS | cut -d ':' -f2)
BODY=$(echo "$RESPONSE" | sed '/HTTP_STATUS/d')

echo -e "\n[$(date)] CREATE USER" >> $LOG_FILE
echo "Request: name=user-$UUID, job=qa-engineer" >> $LOG_FILE
echo "Response Code: $STATUS" >> $LOG_FILE
echo "Response Body: $BODY" >> $LOG_FILE

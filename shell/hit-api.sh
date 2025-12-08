#!/bin/bash

# Variables
ROUTE="api/calling/calls"
PROJECT_ID="projectid"
TOKEN="token"
SPACE="spacename"

curl -v -L -g "https://$SPACE.signalwire.com/$ROUTE" \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Basic $(echo -n "${PROJECT_ID}:${TOKEN}" | base64)" \
--data @data.json

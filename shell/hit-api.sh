#!/bin/bash

# Variables
ROUTE="api/calling/calls"
PROJECT_ID="projectid"
TOKEN="token"
SPACE="spacename"

curl -v -L -g "https://$SPACE.signalwire.com/$ROUTE" \
	-u ${PROJECT_ID}:${TOKEN}
	-H "Content-Type: application/json" \
	-H "Accept: application/json" \
	--data @data.json

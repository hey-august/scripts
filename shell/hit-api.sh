#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
	source .env
else
	echo "Error: .env file not found!"
	exit 1
fi

# Set endpoint route
ROUTE="api/calling/calls"

# Send request
# -v --verbose		switched off for now, noisy
# -L --location		
# -g --globoff		this is what lets us put environment variables in the URL
curl -L -g "https://$SPACE.signalwire.com/$ROUTE" \
	-u ${PROJECT_ID}:${TOKEN} \
	-H "Content-Type: application/json" \
	-H "Accept: application/json" \
	--data @swml.json

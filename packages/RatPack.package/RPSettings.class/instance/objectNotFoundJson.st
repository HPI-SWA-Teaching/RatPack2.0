accessing
objectNotFoundJson

	^ self getValueFor: #objectNotFoundJson default: [ '{"error": "404 - object not found!"}' ]
http requests
put: aUrl on: anApplication json: aString

	| headers |
	
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	^ self put: aUrl on: anApplication headers: headers content: aString
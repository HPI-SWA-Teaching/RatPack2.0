http requests
post: aUrl on: anApplication json: aString

	| headers |
	
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	^ self post: aUrl on: anApplication headers: headers content: aString